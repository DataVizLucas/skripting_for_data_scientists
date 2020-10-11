# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 1 - P.3 Lists
====================================================================
"""
# import numpy as np
import bisect

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


l = [1,3,3,2,4,6,'d','b','a']

# a:
#min(l) not supported between instances 'str' and 'int'
#max(l)
l1 = l[0:6]
l1_min = min(l1)
l1_max = max(l1)

# b:
# split list in int and char parts by copying
l_num = l[0:6].copy()
l_char = l[6:9].copy()

# c:
l_num.sort() # sort list

# d:
l_char = l_char[::-1] # reverse list

# e:
# method 1: list comprehension:
l_num_trunc1 = [x for x in l_num if x < 4]
# method 2:
l_num_trunc2 = [] # create empty list
for i in range(len(l_num)): # for loop
    if l_num[i] < 4:
        l_num_trunc2.append(l_num[i]) # append to list

# f:
bisect.insort(l_char, 'a')
bisect.insort(l_char, 'c')
bisect.insort(l_char, 'e')



        