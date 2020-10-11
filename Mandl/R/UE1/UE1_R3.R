# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          08.10.2020
# Description:   Implementation of laboratory session 1 - R.3 Lists in R
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# a:
a1 -> list(1:4)     # list containing a vector
a2 -> list(1,2,3,4) # list containing single integers
a3 -> as.list(1:4)  # list containing single integers
# b:
b -> list(list(1:3),list(1,2,3))  # list containing two lists
# c:
c -> list("Age" = 42, 30) # create a list with elements accessed via a key
c["Age"]   # access element via the key
c[2]       # access element via index
