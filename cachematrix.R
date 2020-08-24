## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#the function sets and gets a matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
  invert<-NULL
  set<-function(y){
    x<<-y
    invert<<-NULL
  }
  get<-function()x
  
  setinverse<-function(inv)invert<<-inv
  getinverse<-function()invert
  
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
#this functino solves the inverse of the matrix given
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invert<-x$getinverse()
  if(!is.null(invert)){
    message("getting cached data")
    return(invert)
  }
  data<-x$get()
  invert<-solve(data)
  x$setinverse(invert)
  invert
  
    
    
    
  }
