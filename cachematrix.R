## Assignment:  Caching the inverse of a Matrix
## Wrige a pair of function that cache the inveser of a matrix


## Create a special vector, which is really a list containing a function to:

## set the value of the vector
## get the value of the vector
## set the value of the mean
## get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     set <- function(y) {
           x <<- y
           i <<- NULL
     }
     get <- function() x
     setinverse <- function(inv) i <<- inv
     getinverse <- function() i
     list(
           set = set, 
           get = get,
           setinverse = setinverse,
           getinverse = getinverse
           
     )
}


## This function solves the for the function "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     i <- x$getinverse()
     if(!is.null(i)) {
           message("getting cached data")
           return(i)
     }
     m <- x$get()
     i <- solve(m, ...)
     x$setinverse(i)
     i
}
