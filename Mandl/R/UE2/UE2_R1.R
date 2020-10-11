# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          10.10.2020
# Description:   Implementation of laboratory session 2 - R.1 functions
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

sum1 <- function(x){
  x*(x+1)/2
}
  
sum2 <- function(x){
  sum <- 0
  for(i in 1:x){
    sum <- sum + i
  }
  sum # return value
}

a11 <- sum1(100)
a21 <- sum2(100)

a12 <- sum1(1000)
a22 <- sum2(1000)

a13 <- sum1(10000)
a23 <- sum2(10000)


