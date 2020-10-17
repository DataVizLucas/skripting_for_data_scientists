# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          17.10.2020
# Description:   Implementation of laboratory session 4 - R.1 insertion sort
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================


insertion_sort <- function(x){         
  len <- length(x)
  xx <- numeric(0)        
  for(j in 1:len) # iterate over elements in vector with index
  {
    key <- x[j] # set key element 
    if(is.numeric(key)) # check if element is numeric
    {
      for(i in 1:len)        
      {   
        # check if key element is smaller than previous elements or NA for 
        # the first loop when xx is empty
        if(key <= xx[i] || is.na(xx[i]))
        {    
          xx <- append(xx,key,i-1)
          i <- 1
          break
        }
        # i == j means that key is not bigger than any of the previous elements
        else if(i == j)
        {
          xx <- append(xx,key,j)
          i <- 1
          break
        }
      }
    } 
    else
    {
      return("Error: Input is not numeric!")
    }
  }
  xx
}

x <- c(1,5,3,9,7,2,8,6,4,10,19,16,12,11,20,11)
x1 <- c('1',5,3,9,7,2,8,6,4,10)

x_sorted <- insertion_sort(x)
x1_sorted <- insertion_sort(x1)