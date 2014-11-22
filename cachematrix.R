##The assignment is regarding lexical scoping and caching functions that may require a long computation time. Specifically I am using solve() to find the inverse of a matrix and cache it using a free floating variable. I am also trying to cache the input matrix so that I can retrieve it and compare it to any new input matrices. I am returning an error on the latter as described below.

##First, I run both makeCacheMatrix and cacheSolve as per the code below.

##The first function, makeCacheMatrix creates a special "matrix" object that can cache the input matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
y <- NULL 

setmatrix <- function(y){

x <<- y
m <<- NULL


}

##The second function cacheSolve calls functions stored in the special "matrix" returned by makeCacheMatrix (above). 
##If the inverse has already been calculated (and the matrix has not changed), then cacheSolve retrieves the inverse 
##rom the cache. If the input is new, it 
##calculates the inverse of the data and sets the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
       m <- x$getinverse()
       if(!is.null(m)){
    if(x$setmatrix() == x$getmatrix()) { 
        #parts removed
    return(m)
    }
# otherwise 
y <- x$getmatrix() 
x$setmatrix(y) 
m <- solve(y, ...) 
x$setinverse(m)
}
