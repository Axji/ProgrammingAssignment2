## Put comments here that give an overall description of what your
## functions do

# Makes a Cache Matrix
makeCacheMatrix <- function(x = matrix()) {
	x <- rbind(c(1, -1/4), c(-1/4, 1))
}


# inverts the Matrix
cacheSolve <- function(x) {
        return solve(x)%*%x
}
