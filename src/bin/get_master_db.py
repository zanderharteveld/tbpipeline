# -*- coding: utf-8 -*-
"""
Obtain the MASTER database.
"""

# Standard Libraries
import os
import sys
from subprocess import call

# External Libraries
from libconfig.config import _get_repo


# Project Imports
sys.path.append(os.path.join(_get_repo()))
from src.static import masterdb, masterlist


def get_master():
    # Create folder
    if not os.path.isdir(masterdb):
        os.makedirs(masterdb)
    # Download
    command = ['rsync', '-varz', 'arteni.cs.dartmouth.edu::masterDB/', masterdb]
    call(command)
    # Fix list
    with open(masterlist, 'w') as fo:
        with open(os.path.join(masterdb, 'list')) as fd:
            for line in fd:
                pdb_id = line.strip().split('/')[-2:]
                fo.write(os.path.join(masterdb, *pdb_id) + '\n')
    os.unlink(os.path.join(masterdb, 'list'))


if __name__ == '__main__':
    get_master()
