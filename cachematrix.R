##makeCacheMatrix prepares a matrix that will be passed  
## to cacheSolve which will calculate the inverse of
## the matrix if it hasn't been calculated already,
## if it has, the cached copy will be returned


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- null
  }
  
  get <-function() x
  setinv <- function(inver) inv <<- inver 
  getinv <- function() inv
  
  list(set = set, get = get, setinv = setinv,getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
