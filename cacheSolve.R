cacheSolve <- function(x, ...) {
        A <- x$getInverse()
        if(!is.null(A)) {
                message("getting cached data")
                return(A)
        }
        Uninverted <- x$get()
        A <- solve(Uninverted, ...)
        x$setInverse(A)
        A
}