# -*- coding: utf-8 -*-
"""
Created on Sun Oct 18 12:05:22 2020

@author: fleis
"""

# -*- coding: utf-8 -*-
"""
====================================================================
Author:         Lucas Mandl
Company:        FH Joanneum
Date:           10.10.2020
Description:    Implementation of laboratory session 3 - P.7 datetime and 
                lambdas
====================================================================
"""

import random as rand
import datetime as dtm

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


# TODO: finish this task
list1 = [rand.randint(1800, 2000) for x in range(1000)]
list2 = [rand.randint(1, 12) for x in range(1000)]
list3 = [rand.randint(1, 30) for x in range(1000)]

list_dates = list([list1,list2,list3])
dates_temp = list([])
dates_temp.append(([(list_dates[0][i],list_dates[1][i],list_dates[2][i]) for i in range(len(list_dates[0]))]))
dates = list([])
dates = dtm.date(next(x for x in dates_temp[0]))