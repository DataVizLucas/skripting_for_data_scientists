# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          08.10.2020
# Description:   Implementation of laboratory session 1 - R.1 Sequences
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# a:
a <- seq(1,100,by=1)    # create vector seq(from 1, to 100, increment by 1)
#b:
b <- seq(1.3,10.4,by=1) # create vector from 1.3 to 10.3 
# c:
c <- c(2,4,8)           # create vector with concatenate
c <- rep(c,4)           # repeat the vector c 4 times
# d:
d <- c(10:-10)      
