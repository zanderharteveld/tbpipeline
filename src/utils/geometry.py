# -*- coding: utf-8 -*-
"""
IO functions
"""
# Standard Libraries
import os
from typing import Optional, List
from operator import itemgetter

# External Libraries
from SBI.structure import PDB
import SBI.core as SBIcr
import pandas as pd
import numpy as np
import sympy as sy
import scipy as sc


def fit_vector_to_data(df: pd.DataFrame,
                       backbone: bool=False
                       ) -> pd.DataFrame:
    """Add fitting lines to secondary structure segments.

    :param df: Data derived from the MASTER search. Requires the
        ``pdb_path`` column.
    :type df: :class:`~pandas.DataFrame`
    :param bool backbone: If :data:`True`, use full backbone atoms;
        otherwise use only C-alpha.

    :return: :class:`~pandas.DataFrame`

    :raises:
        :ValueError: If ``pdb_path`` column is not present.

    Column modifications:
    =========== ========================================= =======
    column name description                               status
    =========== ========================================= =======
    vectors     List of fitting vectors to the SSE.       new!
    =========== ========================================= =======
    """
    if 'pdb_path' not in df.columns:
        raise ValueError('The pdb_path column is necessary. Get it with src.io.get_pdbs')

    def row_vector(row, backbone):
        pdb3d = PDB(row['pdb_path'])
        pieces = []
        backbone = 'AtomTask:PROTEINBACKBONE' if backbone else 'AtomType:CA'
        for segment in row['match']:
            with SBIcr.on_option_value('structure', 'source', 'label'):
                piece = pdb3d['Residue:{0}-{1}'.format(segment[0], segment[1])][backbone]
                pieces.append(fit_vector(piece.coordinates))
        return pieces
    return df.assign(vectors=df.apply(lambda row: row_vector(row, backbone), axis=1))


def fit_plane_to_data(df: pd.DataFrame,
                      backbone: bool=False,
                      order: int=1,
                      selections: Optional[List]=None,
                      ) -> pd.DataFrame:
    """Add fitting plane to secondary structure segments.

    :param df: Data derived from the MASTER search. Requires the
        ``pdb_path`` column.
    :type masterdf: :class:`~pandas.DataFrame`
    :param bool backbone: If :data:`True`, use full backbone atoms;
        otherwise use only C-alpha.
    :param int order: 1 for linear fitting, 2 for quadratic.
    :param selections: If provided, only use the given SSE for fitting.
        **Count the structures starting at 0!**.
    :type selections: :class:`List`[:class:`List`]

    :return: :class:`~pandas.DataFrame`

    :raises:
        :ValueError: If ``pdb_path`` column is not present.

    Column modifications:
    =========== ========================================= =======
    column name description                               status
    =========== ========================================= =======
    plane       List of fitting planes to the SSE.        new!
    =========== ========================================= =======
    """
    if 'pdb_path' not in df.columns:
        raise ValueError('The pdb_path column is necessary. Get it with src.io.get_pdbs')

    def row_plane(row, backbone, order, selections):
        pdb3d = PDB(row['pdb_path'])
        pieces = []
        backbone = 'AtomTask:PROTEINBACKBONE' if backbone else 'AtomType:CA'
        for segment in row['match']:
            with SBIcr.on_option_value('structure', 'source', 'label'):
                piece = pdb3d['Residue:{0}-{1}'.format(segment[0], segment[1])][backbone]
                pieces.append(piece)
        if selections is None:
            selections = [list(range(len(pieces)))]
        planes = []
        for sele in selections:
            planes.append(fit_plane(pd.concat(itemgetter(*sele)(pieces)).coordinates, order))
        return planes
    return df.assign(plane=df.apply(lambda row: row_plane(row, backbone, order, selections),
                                    axis=1))


def fit_vector(coordinates: np.ndarray) -> sy.geometry.Line:
    """
    Fits a vector over a set of 3D points.

    Adapted from https://stackoverflow.com/questions/2298390/fitting-a-line-in-3d
    """
    # Calculate the mean of the points, i.e. the 'center' of the cloud
    datamean = coordinates.mean(axis=0)

    # Do an SVD on the mean-centered data.
    uu, dd, vv = np.linalg.svd(coordinates - datamean)

    # Now vv[0] contains the first principal component, i.e. the direction
    # vector of the 'best fit' line in the least squares sense.

    # Now generate some points along this best fit line, for plotting.
    linepts = vv[0] * np.mgrid[-20:20:2j][:, np.newaxis]

    # shift by the mean to get the line in the right place
    linepts += datamean
    return sy.geometry.Line(*linepts)


def fit_plane(coordinates: np.ndarray,
              order: int=1
              ) -> sy.geometry.Plane:
    """Fits a plane in either 1st or 2nd order over a set of 3D points.

    Adapted from https://gist.github.com/amroamroamro/1db8d69b4b65e8bc66a6
    """
    # Compute Meshgrid
    x = coordinates[:, 0]
    y = coordinates[:, 1]
    z = coordinates[:, 2]

    # Find edges to trim meshgrid
    x_max, x_min, y_max, y_min = max(x), min(x), max(y), min(y)

    # Create regular grid covering the domain of the data with some addition
    X, Y = np.meshgrid(np.arange(x_min - 10, x_max + 10, 1.0),
                       np.arange(y_min - 10, y_max + 10, 1.0))
    XX = X.flatten()
    YY = Y.flatten()

    # For 2nd order plane
    xy = np.column_stack((x, y))

    # Chose order of approximation plane fitting
    # 1: linear, 2: quadratic
    order = 1
    if order == 1:
        # Best-fit linear plane
        A = np.c_[x, y, np.ones(x.shape[0])]

        # Find coefficients
        C, _, _, _ = sc.linalg.lstsq(A, z)

        # Evaluate it on grid
        Z = C[0] * X + C[1] * Y + C[2]

    elif order == 2:
        # best-fit quadratic curve
        A = np.c_[np.ones(x.shape[0]), xy, np.prod(xy, axis=1), xy**2]
        C, _, _, _ = sc.linalg.lstsq(A, z)

        # Evaluate it on a grid
        Z = np.dot(np.c_[np.ones(XX.shape), XX, YY, XX * YY, XX ** 2, YY ** 2], C).reshape(X.shape)

    # For plane creation
    edge0 = np.array([X[0][0], Y[0][0], Z[0][0]]).flatten()
    edge1 = np.array([X[0][-1:], Y[0][-1:], Z[0][-1:]]).flatten()
    edge2 = np.array([X[-1][-1:], Y[-1][-1:], Z[-1][-1:]]).flatten()
    edges = np.array([edge0, edge1, edge2])

    return sy.Plane(sy.Point3D(edges[0]), sy.Point3D(edges[1]), sy.Point3D(edges[2]))
