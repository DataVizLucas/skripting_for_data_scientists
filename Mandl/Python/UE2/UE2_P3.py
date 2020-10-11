# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          11.10.2020
Description:   Implementation of laboratory session 2 - P.3 functions
====================================================================
"""

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


def convert_temperature(x, flag1, flag2):
        if flag1 == "K":
            if flag2 == "K":
                return "No conversion needed"
            elif flag2 == "C":
                return x - 273
            elif flag2 == "F":
                return x*9/5+32
            else:
                "Invalid arguments"
        
        if flag1 == "C":
            if flag2 == "K":
                return x + 273
            elif flag2 == "C":
                return "No conversion needed"
            elif flag2 == "F":
                return (x-273)*9/5+32
            else:
                "Invalid arguments"
                
        if flag1 == "F":
            if flag2 == "K":
                return (x-32)*5/9+273
            elif flag2 == "C":
                return x - (x-32)*5/9
            elif flag2 == "F":
                return "No conversion needed"
            else:
                "Invalid arguments"
                
c = convert_temperature(30, "C", "K")        
