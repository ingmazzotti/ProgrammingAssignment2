## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix return a list of three function in order to 
## manage cached inverse matrix and obtain original matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(inv) {
          i <<- inv
        }
        
        getinv <- function() {
          i
        }
        
        getdata <- function() {
          x
        }
        
        list(set = set, getinv = getinv, getdata = getdata)
}


## Write a short comment describing this function
## after checking for inverse matrix into the cache 
## return cached value if exists or calculated if doesn't.
## When calculating it updates the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
  
        if(is.null(inv)) {
          print("calculation...")
          data <- x$getdata()
          inv <- solve(data)
          x$set(inv)
          inv
        } else {
          print("from cache...")
          inv
        }
}
