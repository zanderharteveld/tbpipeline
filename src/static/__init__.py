# -*- coding: utf-8 -*-
"""
Define static values that will be used around the project.
"""
# Standard Libraries
import os

# External Libraries
from libconfig.config import _get_repo

masterdb = os.path.join(_get_repo(), 'database', 'master')
"""Path to the upper most directory where the PDS-formated files
are stored.
"""

masterlist = os.path.join(_get_repo(), 'database', 'master.list')
"""Path to the file listing all the PDS-formatted structures.
"""

masterstr = os.path.join(_get_repo(), 'database', 'pdb')
"""Path to the upper most directory where matching structures from
master will be downloaded.
"""


def target_dir(target_id):
    """Path to the upper most directory of a target.
    """
    return os.path.join(_get_repo(), 'targets', target_id)
