## Put comments here that give an overall description of what your
## functions do


## Creates a vector of 4 functions on a square-invertible matrix:
## 1. set the value of the matrix, 2. get the matrix, 3. get the inverse
## of the matrix, 4. set the value of the matrix.
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set<- function(y) {
  x<<-y
  inv<-NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv

list(set = set, get = get, 
     setInverse = setInverse, getInverse = getInverse)
}


## Calculates, and caches the inverse of a matrix if it has
## not already been computed.  Returns the inverse from the cache
cacheSolve <- function(x, ...) {
        inv<-x$getInverse
        if(!is.null(inv)) {
          message("getting cached data")
          return(m)
        }
        data<-x$get()
        inv<-solve(data)
        x$setInverse(inv)
        inv
}
