## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv_mat <- function(inv_mat) m <<- inv_mat
    getinv_mat <- function() m
    list(set = set, get = get,
         setinv_mat = setinv_mat,
         getinv_mat = getinv_mat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinv_mat()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(x)
    x$setinv_mat(m)
    m
}



