# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 2 - P.2 functions
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


def check_prime(num):
    if num == 1:
        return False
    if num <= 3:
        return True
    elif num%2 == 0 or num%3 == 0:
        return False
    
    i = 3
    
    while i*i <= num:
        if num%i == 0:
            return False
        i = i + 1
    return True

def get_prime_twins(n):
    i = 1;
    ptwins = np.array([])
    while i < n:
        if check_prime(i):
            prime1 = i
            i = i + 1
            while not check_prime(i) and i < n:
                i = i + 1
            prime2 = i
            
            if prime2 - prime1 == 2:
                ptwins = np.append(ptwins,prime1)
                ptwins = np.append(ptwins,prime2)
        else:
            i = i + 1
    return ptwins
    
    
twins = np.array([])
twins = get_prime_twins(100)