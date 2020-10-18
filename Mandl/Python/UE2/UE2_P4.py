# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          11.10.2020
Description:   Implementation of laboratory session 2 - P.4 functions
====================================================================
"""

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


def bin_low_mid_high(number, mid_thresh, high_thresh):
    if(mid_thresh < high_thresh)
        return "User error: thresholds not strictly increasing"
    
    if number < mid_thresh:
        return "low"
    elif number >= mid_thresh and number <= high_thresh:
        return "mid"
    elif number > high_thresh:
        return "high"
    else:
        return "Error"
    
