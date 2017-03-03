## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # define x to be matrix type
    m <- NULL                               # initialize as NULL
    set <- function(y) {                    # assign new value 
        x <<- y
        m <<- NULL
    }
    get <- function() x                     # get function
    setinv_mat <- function(inv_mat) m <<- inv_mat  # assign inverse value
    getinv_mat <- function() m                     # gets the value of inverse
    list(set = set, get = get,                     # create the list
         setinv_mat = setinv_mat,
         getinv_mat = getinv_mat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinv_mat() 
    if(!is.null(m)) {          # if calculated, retrieve from the cache
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(x)
    x$setinv_mat(m)
    m
}



