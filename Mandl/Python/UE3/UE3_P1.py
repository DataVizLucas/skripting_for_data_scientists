# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          16.10.2020
Description:   Implementation of laboratory session 3 - P.1 functions
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

A = np.arange(1, 5).reshape([2, 2])
B = np.arange(1, 10).reshape([3, 3])

def calc_22_det(X):
    return X[0,0]*X[1,1] - X[1,0]*X[0,1] 

def calc_33_det(X):
    a = X[0,0]*X[1,1]*X[2,2] + X[0,1]*X[1,2]*X[2,0] + X[0,2]*X[1,0]*X[2,1]
    b = -X[2,0]*X[1,1]*X[0,2] - X[2,1]*X[1,2]*X[0,0] - X[2,2]*X[1,0]*X[0,1]
    return a + b

def my_det(A):
    num_rows, num_cols = A.shape
    if num_rows == 2 and num_cols == 2:
        return calc_22_det(A)
    elif num_rows == 3 and num_cols == 3:
        return calc_33_det(A)
    else:
        print("Error")
        return 0

a = my_det(A)
b = my_det(B)