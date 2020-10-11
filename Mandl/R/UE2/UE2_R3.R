# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          12.10.2020
# Description:   Implementation of laboratory session 2 - R.3 functions
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

check_my_pw <- function(pw){
  password <- "hello world"
  wrong <- "Wrong passwort, accsess denied!"
  right <- "Access granted."
  if(pw == password){
    right
  }
  else{
    wrong
  }
}

pw = readline(prompt = "")
val = check_my_pw(pw)
