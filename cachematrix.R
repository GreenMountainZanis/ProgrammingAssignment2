## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
> makeCacheMatrix <- function (x = matrix ()){
+     getMatrix <<- x
+     inverse <<- solve (x)
+ }

}

## This function returns the inverse of a matrix. If the inverse of the matrix is already
## calculated, then the function retrieve the inversed matrix from the cached data

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
> cacheSolve <- function (x){
+     if (identical (inverse, x) == TRUE){
+         print ("getting cached data")
+         return (inverse)
+     }
+     solve (x)
+ }
