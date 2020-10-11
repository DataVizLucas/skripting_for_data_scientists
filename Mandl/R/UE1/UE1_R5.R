# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          10.10.2020
# Description:   Implementation of laboratory session 1 - R.5 indexing
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# a:
mynumbers <- 1:50

# b:
b <- mynumbers[mynumbers > 10] # extract all numbers greater than 10

# c:
c <- mynumbers[mynumbers <= 33]  # extract all numbers less equal than 33

# d:
d <- mynumbers[4 < mynumbers & mynumbers <= 10]  # extract (4,10]

# e:
e <- mynumbers[(mynumbers%%3) == 0]

# f:
f <- mynumbers[mynumbers%%4%in%2 | mynumbers%%4%in%3] # extract all 
                                                      # mynum%4 == 2 and 3
