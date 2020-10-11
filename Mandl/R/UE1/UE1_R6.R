# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          10.10.2020
# Description:   Implementation of laboratory session 1 - R.6 potential false
#                operators
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# --------------------------------------------
mynumbers <- 1:50
# a:
mynumbers[51]  # = NA
# b:
mynumbers[-10] # the value 10 is cut out from the vector
# c:
mynumbers[0]   # has 0 effect

# --------------------------------------------
testvector <- 1:10
# a:
a <- testvector[c(T, T, T, F, F, T, F, F, F, T)] # extract elements which are TRUE
# b:
b <- testvector[c(T, T, T, F, F, T, F, F)]       # rest of the vector is filled wiht TRUE
# c:
c <- testvector[c(T, T, T, F, F, T, F, F, F, T, F, F)] # excess elements are ignored

# --------------------------------------------
# a:
testvector[c(1,2,3,4)] <- c(99,88) # vector starts over
# b:
testvector[c(1,2,3,4)] <- c(99,88,77) # error, replacing vector is no multiple


# --------------------------------------------
# a:
a1 <- 5/0 # = infinite
# b:
b1 <- 0/0 # = NaN
