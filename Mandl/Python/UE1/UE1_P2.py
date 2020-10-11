# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 1 - P.2 Lists
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

# a:
a1 = [1,2,3,4]   # creates a list with 4 elements
a2 = [[1,2,3,4]] # creates a list within a list (1 element)

# b:
b = [[1,2,3,4],[1,2,3,4]] # creates a list with two lists

# c:
c = [1,2,3,4,5,6] # create a list of integers
c[2] = 'Hello'    # still a list with one element being a string

# d:
c[2] = 3 # set 3rd element back to int
d1 = np.array(c) # create array of ints
d2 = np.array([1,2,3,4,5,6]) # second way of creating an array?

# e:
# d1[1] = 'Hello' # this wont work due to d1 being a vector

# f:
d1[0] = 8.999 # decimal digits are cut off due to vector being int
# solution:
d1 = np.array([1,2,3,4,5,6],dtype=np.float32) # make float array
d1[0] = 8.999

# g:
np.put(d1,[0,1],[40,50])   # replace 1st and 2nd element with 40 and 50

# h:
np.put(d1,[0,1,2,3],[40,50]) # replace element 1-4 with 40 and 50