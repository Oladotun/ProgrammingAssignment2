## Programming assignment Week 3 Data Science
## written by Oladotun Opasina

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

		m <- NULL
		set <-function(x)
		{
			m <<- x
		}
		


		getMatrix <- function() m
		list(set = set, getMatrix = getMatrix)
}


##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getMatrix()

        if(!is.null(m))
        {
        	return (m)
        }
        data <- x$getMatrix()
        m <- solve(x)
        x$set(m)
        m
}
