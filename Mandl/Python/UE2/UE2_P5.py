# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          11.10.2020
Description:   Implementation of laboratory session 2 - P.4 functions
====================================================================
"""

import math
import numpy as np

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


# numeric solution with trapezoidal rule (trapezoids are used to approximate 
# the area under the curve)
def integrate_f(N,a,b,f):
    h = (b-a)/N
    I = 0
    for i in range(N):
        xi = a + (i-1)*h
        xi1 = a + i*h
        if f == "sin":
            I = I + h/2*(math.sin(xi)*math.sin(xi) + math.sin(xi1)*math.sin(xi1))
        elif f == "x":
            I = I + h/2*(xi*xi + (xi1)*(xi1))
            
    return I

sin_int = np.array([0.0,0.0,0.0])
sin_int[0] = integrate_f(100, 0, 2*math.pi, "sin")
sin_int[1] = integrate_f(1000, 0, 2*math.pi, "sin")
sin_int[2] = integrate_f(10000, 0, 2*math.pi, "sin")

x_int = np.array([0.0,0.0,0.0])
x_int[0] = integrate_f(100, 2, 5, "x")
x_int[1] = integrate_f(1000, 2, 5, "x")
x_int[2] = integrate_f(10000, 2, 5, "x")

# analytic solution:
# sin:
a = 2*math.pi
I_sin = 1/2*(a-2*math.sin(a)*math.cos(a))

# x^2
a = 2
b = 5        
I_x = b*b*b/3-a*a*a/3     