## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  list(set_matrix = function(y) {
    x <<- y
    inv <<- NULL
  },get_matrix = function(){x},set_inv = function(inv_matrix){ inv <<- inv_matrix}, get_inv = function() {inv})

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$get_inv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix_data <- x$get_matrix()
  inv <- solve(matrix_data, ...)
  x$set_inv(inv)
  inv
}
