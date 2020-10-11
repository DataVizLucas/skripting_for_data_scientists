# Author:        Lucas Mandl
# Company:       FH Joanneum
# Date:          11.10.2020
# Description:   Implementation of laboratory session 2 - R.2 functions
#
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

vec <- c(5,9,1,4,6,7,3,2,8)

# a:
# ---------------------------------------------
my_len <- function(x){
  j = 1
  while(!is.na(x[j])){
    j = j + 1
  }
  j = j - 1
}

len <- my_len(vec)

# b:
# ---------------------------------------------
my_max <- function(x){
  maximum <- 0
  for(i in x){
    if(i > maximum){
      maximum <- i
    }
  }
  maximum # return value
}

max <- my_max(vec)

# c:
# ---------------------------------------------
quicksort <- function(x, left, right){
  xx <- x
  if(left < right){
    pi <- partition(xx, left, right)
    quicksort(xx, left, pi - 1)
    quicksort(xx, pi + 1, right)
  }
  # there is no call by reference so the next line overwrites the vector
  # in the parent function
  eval.parent(substitute(x<-xx))
}

partition <- function(x, left, right){
  xx <- x
  i <- left
  j <- right - 1
  pivot <- xx[right]
  
  while(i < j){
    while(i < right & xx[i] < pivot){
      i = i + 1
    }
    
    while(j > left & xx[j] >= pivot){
      j = j - 1
    }
    
    if(i < j){
      swap(xx,i,j)
    }
  }
  if(xx[i] > pivot){
    swap(xx,i,right)
  }
  eval.parent(substitute(x<-xx))
  i
}

swap <- function(x,i,j){
  xx <- x
  temp <- xx[i]
  xx[i] <- xx[j]
  xx[j] <- temp
  eval.parent(substitute(x<-xx))
}

my_sort <- function(x){
  quicksort(x,1,my_len(x))
  x
}

vec_sorted <- my_sort(vec)

# d:
# ---------------------------------------------
my_mean <- function(x){
  length <- my_len(x)
  j <- 0
  for(i in x){
    j <- j + i
  }
  j/length
}

mean <- my_mean(vec)




