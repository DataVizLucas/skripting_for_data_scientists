# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.16.2020
Description:   Implementation of laboratory session 3 - P.3 monte carlo
               estimation of pi
====================================================================
"""

import numpy as np
import random as rand

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass

# check if point (x,y) is in circle with r = 1, M = (0,0)
def is_in_circle(x,y):
    if x**2+y**2 < 1:
        return True
    else:
        return False
    
# geenrate random coordinate pair with x and y between -1 and 1
def simulate(n):
    x_rand = rand.uniform(-1, 1)
    y_rand = rand.uniform(-1, 1)
    return is_in_circle(x_rand, y_rand)


j = 0
pi_4 = np.zeros(3)
for n in [1000,10000,100000]:
    # generate a tuple ranging from 1 to n + 1
    n_tuple = tuple(range(1,n+1))
    # call the function simulate() with all the elements from the tuple:
    sim = list(map(simulate, n_tuple))
    
    pi_4[j] = 0
    # count the True values in the list sim:
    for i in range(len(sim)):
        if sim[i] == True:
            pi_4[j] = pi_4[j] + 1
    
    # calculate pi:
    pi_4[j] = pi_4[j]*4/n
    j += 1

# Conclusio: as this methon uses random numbers when calculating pi, the 
# influence of the number of cycles has an impact on the accuracy.

# more cycles -> higher probability of getting more accurat result of pi