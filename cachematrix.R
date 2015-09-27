## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversedMatrix <- NULL

  set <- function(theMatrix) {
    x <<- theMatrix
    inversedMatrix <<- NULL
  }

  get <- function() {
    x
  }

  setInversedMatrix <- function(theInversedMatrix) {
    inversedMatrix <<- theInversedMatrix
  }

  getInversedMatrix <- function() {
    inversedMatrix
  }

  list(set = set, get = get, setInversedMatrix = setInversedMatrix, getInversedMatrix = getInversedMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inversedMatrix <- x$getInversedMatrix()

  if (!is.null(inversedMatrix)) {
    message("getting cached data")
    return(inversedMatrix)
  }

  matrix <- x$get()
  inversedMatrix <- solve(matrix, ...)
  x$setInversedMatrix(inversedMatrix)

  inversedMatrix
}
