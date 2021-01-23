makeCacheMatrix <- function(x = numeric()) {
        A <- NULL
        set <- function(y) {
                x <<- y
                A <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) A <<- solve
        getInverse <- function() A
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}