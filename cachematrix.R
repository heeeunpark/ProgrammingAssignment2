## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
MatrixInverse <- NULL
MatrixSetting <- function(y) {
	xx <<- y
	MatrixInverse <<- NULL
}
MatrixGetting <- function(x)
InverseSetting <- function(inverse)
MatrixInverse <<- inverse
InverseGetting <- function(MatrixInverse)
list(MatrixSetting = MatrixSetting, MatrixGett
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        MatrixInverse <- x$InverseGetting()
        if(! is.null(MatrixInverse)) {
        	Message("Do you want to get an invertible matrix?")
        	return(MatrixInverse)
        }
        MatrixResult <- x$MatrixGetting()
        MatrixInverse <- solve(MatrixResult, ...)
        x$InverseSetting(MatrixInverse)
        return(MatrixInverse)
}
