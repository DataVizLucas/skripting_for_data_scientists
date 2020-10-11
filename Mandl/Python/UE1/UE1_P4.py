# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 1 - P.4 Dictionarys
====================================================================
"""

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


Inventory = {
 "Apfel" : 3,
 "Banane" : 5,
 "Obstkorb" : ["Banane", "Apfel", "Birne"]
 }

# a:
Inventory["Weintraube"] = 4 # add element to dictionary

# b:
Inventory["Obstkorb"].append("Weintraube") # append to list in dictionary

# c:
Inventory["Obstkorb"].sort() # sort the list in the dictionary

# d:
del Inventory["Apfel"] # delete element apfel from list in dictionary

# e:
Inventory["Banane"] = 10 # increase number of bananas