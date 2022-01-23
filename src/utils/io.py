# -*- coding: utf-8 -*-
"""
IO functions
"""
# Standard Libraries
import os
from ast import literal_eval
from typing import Optional

# External Libraries
import yaml
import pandas as pd
import SBI.databases as SBIdb
import SBI.core as SBIcr
import SBI.structure as SBIstr

# Project Imports
from ..static import masterstr


def load_target_description(filename: str) -> pd.DataFrame:
    """Load the target description.

    :param str filename: Target YAML file.

    :return: :class:`~pandas.DataFrame`

    Columns of the returned :class:`~pandas.DataFrame` are:

    ============ ===================================================
    column name  description
    ============ ===================================================
    structure    PDB identifier
    rfchain      Chain identifier
    range        Range of interest (PDB count)
    type         *de novo* vs. natural
    architecture TopoBuilder **topology** description
    topology     TopoBuilder **connectivity** description
    loop_lengths Lenths of all the necessary loops
    variant_id   *naive* vs, *smoothed*
    step_order   Building step order
    step_desc    SSE step composition
    ============ ===================================================
    """
    data = yaml.load(open(filename))
    data_c = data.pop('corrections', None)
    df = pd.DataFrame(data)
    df = df.assign(variant_id=[list(k.keys())[0] for k in df['variants'].values])
    df2 = (pd.DataFrame(df['variants'].apply(pd.Series).T.stack())
             .reset_index().drop(columns='level_1')
             .rename(columns={0: 'pieces', 'level_0': 'variant_id'}))
    df2 = (df2['pieces'].apply(pd.Series).merge(df2, left_index=True, right_index=True)
                        .drop(columns='pieces')
                        .melt(id_vars=['variant_id'], var_name='step_order', value_name="step_desc")
                        .dropna())
    df = df.merge(df2, on='variant_id').drop(columns='variants')
    return df.assign(corrections=[data_c] * df.shape[0])


def parse_master_file(filename: str,
                      max_rmsd: Optional[float] = None
                      ) -> pd.DataFrame:
    """Load MASTER output data.

    :param str filename: Output file.
    :param float max_rmsd: Maximum RMSD value to recover.

    :return: :class:`~pandas.DataFrame`

    Columns of the returned :class:`~pandas.DataFrame` are:

    =========== ===================================================
    column name description
    =========== ===================================================
    rmsd        RMSD value between query and match
    pds_path    Path to the PDS file containing the match
    pdb         PDB identifier
    chain       Chain identifier
    match       List of ranges for the match (Rosetta count)
    =========== ===================================================

    This assumes that the PDS files basename has the standard nomenclature
    ``<pdbid>_<chain>.pds``.
    """
    df = pd.read_csv(filename,
                     names=list(range(30)), engine='python',
                     sep='\s+', header=None).dropna(axis=1, how='all')
    print('read')
    df['match'] = df[df.columns[2:]].astype(str).sum(axis=1).apply(literal_eval)
    df = df.rename(columns={0: 'rmsd', 1: 'pds_path'})
    df = df.drop(columns=[i for i in df.columns if isinstance(i, int)])
    df[['pdb', 'chain']] = (pd.DataFrame(list(df['pds_path'].str.replace('.pds', '')
                            .apply(lambda x: os.path.basename(x).split('_')).values)))
    if max_rmsd is not None:
        df = df[(df['rmsd'] <= max_rmsd)]
    return df[['rmsd', 'pds_path', 'pdb', 'chain', 'match']]


def get_pdbs(masterdf: pd.DataFrame) -> pd.DataFrame:
    """From the MASTER output, find the matching structures and their paths.

    If the structure is not found in the database, download it and select the
    appropiate chain.

    :param masterdf: Result from the MASTER search.
    :type masterdf: :class:`~pandas.DataFrame`

    :return: :class:`~pandas.DataFrame`

    Column modifications:
    =========== ========================================= =======
    column name description                               status
    =========== ========================================= =======
    pds_path    Path to the PDS file containing the match dropped
    pdb_path    Path to the PDB file containing the match new!
    =========== ========================================= =======
    """
    def get_structure(row, pdbdb):
        filename = pdbdb.store_local_path('{0}_{1}.pdb'.format(row['pdb'], row['chain']))
        if not os.path.isfile(filename):
            pdb3d = SBIstr.PDB('fetch:{0}'.format(row['pdb']), format='pdb', clean=True,
                               dehydrate=True, hetatms=False)['Chain:{}'.format(row['chain'])]
            pdb3d.write(filename, format='pdb')
        return filename

    # Define PDB database.
    with SBIcr.on_option_value('structure', 'format', 'pdb'):
        pdbdb = SBIdb.PDBLink(masterstr)
    newdf = masterdf
    # Get the appropiate path each structure should have.
    newdf = newdf.assign(pdb_path=masterdf.apply(lambda row: get_structure(row, pdbdb), axis=1))
    return newdf[['rmsd', 'pdb_path', 'pdb', 'chain', 'match']]
