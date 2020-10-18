# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          08.10.2020
# Description:   Implementation of laboratory session 1 - R.2 Vectors
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# a:
a <- c(1:10)
# b:
sum_a = sum(a)     # get sum of vector
min_a = min(a)     # get minumum value
max_a = max(a)     # get maximum value
mean_a = mean(a)   # get mean value
std_a = sd(a)      # get standard deviation
# c:
summary(a)         # summary returns minimum, 1st quartile, median, 3rd quartile and maximum
# d:
as.integer(summary(a)) # as integer truncates and converts numbers to integer
# e:
a[5] <- 5.55
#f:
a[c(1,3,8)] = c(0,0,0)  # replace the 1st, 3rd and 8th element in one line
# g:
a[10] = 'Hello'     # the int vector is converted to a string vector --> all elements turn to char  

