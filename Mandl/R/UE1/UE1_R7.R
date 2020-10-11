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

# a:
# dictionary equivalent to python in R would be a list with keys:
dic <- list("Name" = "foo", "Surname" = "bar")
dic["Name"]
dic["Name"] = "foo2"
dic["Name"]

# b:
# make dictionary with missing values (NA)
dic2 <- list("Name" = NA, "Surname" = NA)

# c:
dic2["Name"] = "foo" # overwrite value in dictionary

# d:
names(dic2) # extract keys of dictionary

# e:
"Name"%in%names(dic2) # check if key is in dictionary

# f: 
# the difference between python and R regarding dictionaries is that R does not
# support dictionaries. The equivalent in R is a list!
