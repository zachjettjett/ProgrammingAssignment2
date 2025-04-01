## Put comments here that give an overall description of what your
##Defines the makeCacheMatrix which will contain the matrix and its inverse 
makeCacheMatrix <- function(){
  ##matrix
  mat <- NULL
  ##inversematrix
  inv_cache <- NULL
  #defines the inner matrix
  setMatrix <- function(x){
    mat <<- x
    inv_cache <<- NULL
  }
  
  ##determines the inverse function
  getInverse <- function(){
    if (is.null(inv_cache)){
      inv_cache <<- solve(mat)
    }
    inv_cache
  }
  
  list(setMatrix = setMatrix, getInverse = getInverse)
}

#Defines function which takes argument x
cacheSolve <- function(x, ...){
  inv_cache <- x$getInverse()
  inv_cache
}
