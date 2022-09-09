## Put comments here that give an overall description of what your
## functions do

## This function cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
  set <- function(y) {
          x <<- y
          j <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) j <<- inverse
  getinverse <- function() j
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function returns the inverse of a matrix. If the inverse of the matrix is already
## calculated, then the function retrieve the inversed matrix from the cached data


cacheSolve <- function(x, ...) {
  j <- x$getinverse()
  if (!is.null(j)) {
          message("displaying cached data")
          return(j)
  }
  data <- x$get()
  j <- solve(data, ...)
  x$setinverse(j)
  j
}
