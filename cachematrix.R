## Overview of the two functions (see below for additional comments):
## makeCacheMatrix prepares a matrix object that will be passed  
## to cacheSolve. cacheSolve will calculate the inverse of
## the matrix and store it in the matrix object if it hasn't been 
## calculated already. If the calculated object exists, 
## the cached copy will be returned

makeCacheMatrix <- function(x = matrix()) {
#Creates a matrix object and caches its inverse
# Arguments: x, a matrix whose inverse will be calculated
# Returns: a matrix object as a list of functions
  
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- null
  }
  
  get <-function() x
  setinv <- function(inver) inv <<- inver 
  getinv <- function() inv
  
  #Return a list object containing these functions
  list(set = set, get = get, setinv = setinv,getinv = getinv)
  
}




cacheSolve <- function(x, ...) {
# Calculates the inverse and stores it in the matrix object or
# returns the already cached inverse
#
# Arguments: x, a matrix object created by makeCacheMatrix
# (can pass additional arguments if needed)
#
# Returns: a matrix that is the inverse of 'x'

  

}
