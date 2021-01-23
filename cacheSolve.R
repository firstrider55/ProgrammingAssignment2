cacheSolve <- function(x, ...) {
        ##cacheSolve determines the inverse of a matrix. If this inverse has already been calculated, it pulls the value of the inverse from the cache.
        ##First we load a predetermined inverse, if it exists
        A <- x$getInverse()
        if(!is.null(A)) {
                message("getting cached data")
                return(A)
        }
        ##If no such inverse exists, we calculate using the solve() function and store it to the cache.
        Uninverted <- x$get()
        A <- solve(Uninverted, ...)
        x$setInverse(A)
        A
}