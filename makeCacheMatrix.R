makeCacheMatrix <- function(x = numeric()) {
        ##makeCacheMatrix.R creates four functions which are returned in a list
        ##The first step is to clear the previous run
        A <- NULL
        ##set sets a value to the cache
        set <- function(y) {
                x <<- y
                A <<- NULL
        }
        ##get obtains the input of makeCacheMatrix
        get <- function() x
        ##setInverse and getInverse are used in caching the inverse to reduce processing time
        setInverse <- function(solve) A <<- solve
        getInverse <- function() A
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}