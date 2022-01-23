# -*- coding: utf-8 -*-

from pymol import cmd, cgo
import numpy as np
import ast


def make_arrow(name, start, end, width=0.3, arrow=1.0, color='white'):
    """
    Creates a group arrow composed of a tail and a tip and the start and
    end points as pseudoatoms (so that they can be selected).
    Loosely based on Thomas Holder's
    [cgo_arrow](http://pymolwiki.org/index.php/cgo_arrow).

    Parameters
    ----------
    name : str
        Name for the arrow group.
        No default.
    start : array
        Starting point of the arrow.
    end : array
        End point of the arrow.
    width : float
        Width of the arrow's tail (tip width is proportional).
        Default 0.3.
    arrow : float
        Height of the arrow's tip.
        Default 1.0
    color : str
        Color of the arrow.
        Default is white.

    Returns
    -------
    A group object of an arrow.
    """
    atomname = name + '_point'
    tailname = name + '_tail'
    tipname = name + '_tip'
    togroup = [atomname, tailname, tipname]

    if isinstance(start, str):
        start = [float(x) for x in ast.literal_eval(start)]
    else:
        start = [float(x) for x in start]
    if isinstance(end, str):
        end = [float(x) for x in ast.literal_eval(end)]
    else:
        end = [float(x) for x in end]

    length = np.abs(np.linalg.norm(np.asarray(start) - np.asarray(end)))
    factor = float(arrow) / float(length)

    vector = [start[0] + (end[0] - start[0]) * (1 - factor),
              start[1] + (end[1] - start[1]) * (1 - factor),
              start[2] + (end[2] - start[2]) * (1 - factor)]
    tipwini = width * 2.5
    tipwend = 0.0
    color = [float(x) for x in list(cmd.get_color_tuple(color))]

    tail = [cgo.CYLINDER,
            start[0], start[1], start[2], vector[0], vector[1], vector[2],
            width, color[0], color[1], color[2], color[0], color[1], color[2]]

    head = [cgo.CONE,
            vector[0], vector[1], vector[2],
            end[0], end[1], end[2], tipwini, tipwend,
            color[0], color[1], color[2], color[0], color[1], color[2],
            1.0, 1.0]

    cmd.pseudoatom(atomname, resn=1, chain='A', pos=start)
    cmd.pseudoatom(atomname, resn=2, chain='A', pos=end)
    cmd.disable(atomname)
    cmd.load_cgo(tail, tailname)
    cmd.load_cgo(head, tipname)

    cmd.group(name, " ".join(togroup))


def make_axis(groupName='axisXYZ', center=None, size=3,
              xcolor='white', ycolor='white', zcolor='white'):
    """
    Creates an axis towards the X, Y and Z coordinates.

    Parameters
    ----------
    groupName : str
        Name of the axis group.
        Default is 'axisXYZ'.
    center : array
        Point in which to center the axis.
        Default is [0, 0, 0].
    size : float
        Lenght of each arrow of the axis
    xcolor : string
        Color for the X axis.
        Default is white.
    ycolor : string
        Color for the Y axis.
        Default is white.
    zcolor : string
        Color for the Z axis.
        Default is white.
    """
    center = [0, 0, 0] if center is None else center
    if isinstance(center, str):
        center = [float(x) for x in ast.literal_eval(center)]
    if isinstance(size, str):
        size = float(ast.literal_eval(size))
    axis = ['X', 'Y', 'Z']
    colors = [xcolor, ycolor, zcolor]
    names = []
    for c_, _ in enumerate(axis):
        make_arrow(groupName + '_' + _, center,
                   [center[0] + size if axis[c_] == 'X' else center[0],
                    center[1] + size if axis[c_] == 'Y' else center[1],
                    center[2] + size if axis[c_] == 'Z' else center[2]],
                   color=colors[c_])
        names.append(groupName + '_' + _)
    cmd.group(groupName, ' '.join(names))


cmd.extend('make_arrow', make_arrow)
cmd.extend('make_axis', make_axis)
