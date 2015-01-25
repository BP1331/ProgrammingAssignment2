## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inversematrix <- NULL
        set <- function(y) {
                x <<- y
                inversematrix <<- NULL
        }
        get <- function() {x}
        setinverse <- function(solve) {inversematrix <<- solve}
        getinverse <- function() {inversematrix}
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inversematrix <- x$getinverse()
        if(!is.null(inversematrix)) {
                message("Getting cached data")
                return(inversematrix)
        }
        data <- x$get()
        inversematrix <- solve(data, ...)
        x$setinverse(inversematrix)
        inversematrix
}
