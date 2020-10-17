# Author:         Lucas Mandl
# Company:        FH Joanneum
# Date:           17.10.2020
# Description:    Implementation of laboratory session 4 - R.3 useful 
#                 functions
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

data <- iris

# outputs information about data like name of columns, data type, and some 
# of the data itself
str(iris)

# when used on a factor, levels outputs the different names which are occuring
# in the factor
levels(iris$Species)

# outputs the last n rows of a dataset
tail(iris, n = 10)

# outputs the first n rows of a dataset
head(iris, n = 10)

# ouputs the dataframe wihtout all the duplicates
unique(iris)

# returns a table with the data and information on how often a value is in 
# a data-set
tab <- table(iris$Sepal.Length)

# returns a table in the format of a confusion matrix
tab2 <- table(iris$Sepal.Length,iris$Sepal.Width)
