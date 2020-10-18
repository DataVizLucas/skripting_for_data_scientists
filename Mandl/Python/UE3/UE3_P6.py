# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 3 - P.6 list comprehensions
====================================================================
"""

# import random as rand
# import numpy as np
# import matplotlib.pyplot as plt
# import matplotlib.image as mpimg

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


test_list1 = list(["str1","str2","str3",1,2,3,4,5,6,7,8,9,10,11,12])
test_list2 = list([1,2,3,4,5,6,7,8,9,10,11,12])
list_of_lists = list([list([1,2,3,4]),list([1,2]),list([1,2,3,4,5]),list([1,2,3])])

# a:
str_list = [x for x in test_list1 if isinstance(x, str)]

# b:
sq_list = [x*x for x in test_list2 if x < 12 and x > 3 and x%2 == 0]

# c:
c_list = [x[2] for x in list_of_lists if len(x)>3]

# TODO: finish implementation
# d:
d_list = ([2,3,4,6,7,8,9])
d_matrix = [[x*x for x in range(2,5)] for i in range(3)]