# Author:         Lucas Mandl
# Company:        FH Joanneum
# Date:           17.10.2020
# Description:    Implementation of laboratory session 4 - R.6 Tidyverse
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

library(tidyverse)
library(ggplot2)

data <- diamonds

# get numbers of diamonds in the different colors
table(diamonds$color)

# calculate min, max and median weight for every combination of clarity and color
clar_col <- diamonds %>% group_by(clarity,color) %>% summarise(minCar = min(carat),
                                                               maxCar = max(carat),
                                                               medCar = median(carat))

# calulate weight of diamonds in g
diamonds <- diamonds %>% mutate(weight = x*y*z*3.514)
clar_price <- diamonds %>% group_by(clarity) %>% summarise(minWeight = min(carat),
                                                           maxWeight = max(carat),
                                                           medWeight = median(carat))

a <- ggplot(data = diamonds, aes(x = 0, y = carat))
a <- a + geom_boxplot(width = 0.1)
a

# a <- boxplot(data = clar_price, x = 0, y = diamonds$cara)

median(diamonds$carat)
max(diamonds$carat)
min(diamonds$carat)

diamonds %>% group_by(clarity) %>% summarise(min(diamonds$price),max(diamonds$price),median(diamonds$price))
