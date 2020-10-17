# Author:         Lucas Mandl
# Company:        FH Joanneum
# Date:           17.10.2020
# Description:    Implementation of laboratory session 4 - R.4 Tibble 1 
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================


library(tidyverse)

# create tibble
data = tibble(ID = c(1,2,3,4,5), 
       Vorname = c("Elsa", "Wendy", "Ben", "Andrei","Bill"), 
       Nachname = c("Faulkner","Trump","Fauci","Hofer","Swan"),
       Benutzername = c("ElFa","WeTr","BeFa","AnHo","BiSw"), 
       Alter = c(12,4,34,23,52), 
       Geschlecht = c("m","m","f","f","t"))

# alter age of Wendy
data
data$Alter[2] = data$Alter[1]
data

# 3 ways to output the field Benutzername
data$Benutzername[1]
data[1,4]
data[1,"Benutzername"]

# sort by surname, ascending
data %>% arrange(Vorname)

# sort by surname, descending and age ascending
data %>% arrange(desc(Vorname),Alter)

