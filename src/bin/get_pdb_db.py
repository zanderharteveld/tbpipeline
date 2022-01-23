# -*- coding: utf-8 -*-
"""
Obtain the PDB version of the MASTER database.
"""

# Standard Libraries
import os
import sys

# External Libraries
from libconfig.config import _get_repo
from SBI.databases import PDBLink
from SBI.structure import PDB
import SBI.core as SBIcr


# Project Imports
sys.path.append(os.path.join(_get_repo()))
from src.static import masterstr, masterlist


def get_master_pdb():
    # Create folder
    if not os.path.isdir(masterstr):
        os.makedirs(masterstr)
    pdbl = PDBLink(masterstr)
    # Download
    with open(masterlist) as fd:
        for pdb in fd:
            pdb, chain = os.path.splitext(os.path.basename(pdb))[0].split('_')
            pdbfl = pdbl.store_local_path('{0}_{1}.pdb.gz'.format(pdb, chain))
            if os.path.isfile(pdbfl):
                print('{0} already exists'.format(pdbfl))
                continue
            print('Downloading {0} chain {1} to {2}'.format(pdb, chain, pdbfl))
            with SBIcr.on_option_value('structure', 'source', 'auth'):
                pdbstr = PDB('fetch:{}'.format(pdb), clean=True, hetatms=False,
                             dehydrate=True, header=False)['Chain:{}'.format(chain)]
                pdbstr.write(pdbfl, format='pdb')


if __name__ == '__main__':
    get_master_pdb()
