# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 3 - P.6 list comprehensions
====================================================================
"""

#import random as rand
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


test_list1 = list(["str1","str2","str3",1,2,3,4,5,6,7,8,9,10,11,12])
test_list2 = list([1,2,3,4,5,6,7,8,9,10,11,12])

str_list = [x for x in test_list1 if isinstance(x, str)]
# sq_list = [x%2 for x in test_list2 if x < 12 and x > 3]