# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          16.10.2020
Description:   Implementation of laboratory session 3 - P.2 numpy
====================================================================
"""

import numpy as np

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass

eq_sys = np.array([[1, 1, -2, 1, 3, -1], [2, -1, 1, 2, 1, -3], 
                   [1, 3, -3, -1, 2, 1], [5, 2, -1, -1, 2, 1],
                   [-3, -1, 2, 3, 1, 3], [4, 3, 1, -6, -3, -2]])

v = np.array([4,20,-15,-3,16,-27])

res1 = np.linalg.solve(eq_sys,v)
res2 = np.linalg.inv(eq_sys).dot(v)