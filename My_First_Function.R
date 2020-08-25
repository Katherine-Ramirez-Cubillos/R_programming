# My First R Function

add2 <-function(x,y){
  x+y
}

## This function  is going to take a vector of numbers,
## it's going to return the subset of the vector, that's above the vecto value ten. 
## So any number that's bigger then ten, it's going to return those nnumbers for you.

above10<-function(x){
  use<-x>10
  x[use]
}

## This function allows people to sub, to kind of extract the elements of a vector. 
above <-function(x,n){
  use <-x>n
  x[use]
}

## This is the same functions, but with a default value n=10. 
above <-function(x,n=10){
  use <-x>n
  x[use]
}

## This funciton is going to take a matrix or a dataframe and calculate the mean of each column
## This is going to involve using a for-loop. 

colummean <- function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i])
  }
  means
}


## This is the same function but remove the NA values. 

colummean <- function(y, removeNA=TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}









