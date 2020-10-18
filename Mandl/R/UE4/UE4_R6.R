# Author:         Lucas Mandl
# Company:        FH Joanneum
# Date:           17.10.2020
# Description:    Implementation of laboratory session 4 - R.6 Tidyverse
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

library(dslabs)
library(tidyverse)

murders_data <- as_tibble(murders)

# make a new column and calculate relative murders
murders_data <- murders_data %>% mutate(relative = murders_data$total/murders_data$population*100)

# drop the column abb
murders_data = subset(murders_data, select = -c(abb))

# sort table by total:
total <- murders_data %>% arrange(desc(total))
total$region[1]

# sort by relative:
relative <- murders_data %>% arrange(desc(relative))
relative$region[1]
