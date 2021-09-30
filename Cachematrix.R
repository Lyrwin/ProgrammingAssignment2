## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will make a cache matrix and set inverse as null

makeCacheMatrix <- function(x = matrix()) {
  #variables and functions
  matrixinv <- NULL
  set<- function(y){
    x <<-y
    matrixinv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse){matrixinv<<-inverse}
  getInverse <- function(){inverse}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
## This function is cacheSolve and returns the matrix to inverse

cacheSolve <- function(x, ...)(
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    ## Return a matrix that is the inverse of 'x'
    message("getting cached data")
  return(inverse)
  }
  mat - x$get()
  inverse <- solve(mat, ...)
  x$setInverse(inverse)
  inverse
}