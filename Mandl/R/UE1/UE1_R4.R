# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          09.10.2020
# Description:   Implementation of laboratory session 1 - R.4 accessing lists
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# a:
# make list with keys
userinfo <- list(user="testuser", userid=1, 
               birthdate=list(day=29, month="February", year=2184),
               allergies = list("gluten", "lactose"))


# b:
# extract 1st 2nd and 4th element
b <- userinfo[c(1,2,4)]

# c:
# extract specific elements of the list
c <- userinfo[c("user","userid","allergies")]

# d:
# four ways of accessing the list:
userinfo[[1]]
userinfo$user
userinfo[1][1]
userinfo["user"]

# e:
# extract month with $
userinfo$birthdate$month

# f:
# extract element and convert it into a vector
f <- unlist(userinfo$allergies) 
