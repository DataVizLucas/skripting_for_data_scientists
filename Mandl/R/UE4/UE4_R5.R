# Author:         Lucas Mandl
# Company:        FH Joanneum
# Date:           17.10.2020
# Description:    Implementation of laboratory session 4 - R.4 Tibble 2 
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

# create tibble 1
students <- tibble(ID = c(1,2,3,4,5), 
              Vorname = c("Elsa", "Wendy", "Ben", "Andrei","Bill"), 
              Nachname = c("Faulkner","Trump","Fauci","Hofer","Swan"),
              Benutzername = c("ElFa","WeTr","BeFa","AnHo","BiSw"), 
              Alter = c(12,4,34,23,52), 
              Geschlecht = c("m","m","f","f","t"))

# create tibble 2
LV <- tibble(ID = students$ID,
            Lehrveranstaltung = c("SfDS", "SfDS","EDS1","EDS1","DBA"))


# merge/combine students and LV
comb <- bind_cols(students,LV)

# Add a student to comb
comb <- comb %>% add_row(ID...1 = 7,
                 Vorname = "Luisa",
                 Nachname = "Ferro",
                 Benutzername = "LuFe",
                 Alter = 45,
                 Geschlecht = "f",
                 ID...7 = 7,
                 Lehrveranstaltung = "DBA")

# add only ID to LV
LV <- LV %>% add_row(ID = 7)

# TODO: describe these different types of joins:
a = inner_join(students,LV)
a

b = left_join(students,LV)
b

c <- semi_join(students,LV)
c
