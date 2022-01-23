# -*- coding: utf-8 -*-
"""
IO functions
"""
# Standard Libraries
import os
from typing import Optional, List

# External Libraries
import pandas as pd
from topobuilder.case import case_template
from topobuilder.actions import build

# Project Imports
from ..static import target_dir


def make_sketch(df: pd.DataFrame,
                querypick: Optional[List] = None):
    """Create a sketch according to the content as specified in the
    target description.

    :param df: Data obtained from the target description. Requires the
        ``variant_id`` and ``step_order`` columns.
    :type df: :class:`~pandas.DataFrame`
    :param querypick: If provided, decide which combinations of ``variant_id``
        and ``step_order`` are going to be executed.

    :return: :class:`~pandas.DataFrame`

    :raises:
        :ValueError: If ``variant_id`` or ``step_order`` columns are not present.

    Column modifications:
    =========== =========================== =======
    column name description                 status
    =========== =========================== =======
    case_path   Path to the case file       new!
    sketch_path Path to the sketch PDB file new!
    =========== =========================== =======
    """
    if len(set(df.columns).intersection(set(['variant_id', 'step_order']))) != 2:
        raise ValueError('Columns "variant_id" and "step_order" must be present')
    if querypick is None:
        querypick = df[['variant_id', 'step_order']].values
    querypick = list(map(tuple, querypick))

    querydict = dict(tuple(df.groupby(['variant_id', 'step_order'])))
    results = []
    cdir = os.getcwd()
    newdf = {'structure': [], 'variant_id': [], 'step_order': [], 'case_path': [], 'sketch_path': []}
    for k in querypick:
        try:
            sf = querydict[k].iloc[0]
            os.chdir(target_dir(sf['structure']))
            name = '{0}_{1}_{2}'.format(sf['structure'], sf['variant_id'], sf['step_order'])
            case, outfile = case_template(name, topology=sf['topology'], corrections=sf['corrections'],
                                          make_absolute=False)
            sketchfiles = build(outfile, overwrite=True)
            newdf['structure'].append(sf['structure'])
            newdf['variant_id'].append(sf['variant_id'])
            newdf['step_order'].append(sf['step_order'])
            newdf['case_path'].append(os.path.abspath(outfile))
            newdf['sketch_path'].append(sketchfiles)
            os.chdir(cdir)
        except KeyError:
            pass

    return pd.DataFrame(newdf)
