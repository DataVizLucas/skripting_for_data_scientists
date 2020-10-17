# Author:         Lucas Mandl
# Company:        FH Joanneum
# Date:           17.10.2020
# Description:    Implementation of laboratory session 4 - R.2 matrix 
#                 calculations
# ============================================
rm(list = ls())       # clear workspace
cat("\014")           # clear command line
# ============================================

matmul <- function(A,B)
{
  dim_a <- dim(A)
  dim_b <- dim(B)
  na <- dim_a[1]
  ma <- dim_a[2]
  nb <- dim_b[1]
  mb <- dim_b[2]
  
  if(na == mb && ma == nb)
  {
    # implementation of: C_ij = Sum(A_ik*B_kj)
    # i iterates columns of A
    # j iterates rows of B
    # k iterates rows of A
    C = matrix(rep(0, len=(na*mb)), nrow = na, ncol = mb)
    for(i in 1:na)
    {
      for(j in 1:mb)
      {
        sum <- 0
        for(k in 1:ma)
        {
          sum <- sum + A[i,k]*B[k,j]
        }
        C[i,j] <- sum
      }
    }
  }
  else
  {
    return("Error, matrix dimensions not suitable!")
  }
  C
}

A1 <- matrix(1:6, nrow = 2, ncol = 3)
B1 <- matrix(1:6, nrow = 3, ncol = 2)
X1 <- matmul(A1,B1)

A2 <- matrix(1:9, nrow = 3, ncol = 3)
B2 <- matrix(1:6, nrow = 3, ncol = 2)
X2 <- matmul(A2,B2)