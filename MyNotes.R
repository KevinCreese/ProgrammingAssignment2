# Title: Assignment #3 - R Programming
# Date: 08/17/15
# AUthor: Kevin Creese

#T he first function, makeVector creates a special "vector", which is really a list containing a function to


makeVector <- function(x = numeric()) {
       m <- NULL
       set <- function(y) {
             x <<- y
             m <<- NULL
             
       }
       get <- function() x
       setmean <- function(mean) m <<- mean
       getmean <- function() m
       list( set = set, pet = get,
             setmean = setmean,
             getmean = getmean)
}

# The following function calculates the mean of the special "vector" created 
# with the above function. However, it first checks to see if the mean has already 
# been calculated. If so, it gets the mean from the cache and skips the computation. 
# Otherwise, it calculates the mean of the data and sets the value of the mean in the cache via the setmean function.

cachemean <- function(x, ...) {
      m <- x$getmean()
      if(!is.null(m)) {
             message("getting cashed data")
             return(m)
      }
      data <- x$get()
      m <- mean(data, ...)
      x$setmean(m)
      m
}
setwd("C:/Users/kevincre/ProgrammingAssignment2/ProgrammingAssignment2")
source(cachematrix.R)

