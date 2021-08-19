## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##there are two functions makeCachematrix,makeCachematrix
##makeCachematrix consists of set,get,setInverse,getInverse

makeCacheMatrix <- function(x = matrix()) {
     inv<-NULL   #initializing inverse as NULL
     set<-function(y){
                     x<<-y
                     inv<<-NULL
                     } 
     get<-function()x        #function to get matrix x
     setInverse<-function(inverse){inv<<-inverse}
     getInverse<-function(){inv}
     list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}
##This is used to get the cache data

cachesolve<-function(x,...){
     inv<-x$getInverse()
     if(!is.null(inv)){         ##checking whether inverse is NULL
       message("getting cached data")
       return(inv)              ##returns inverse value
     }
     mat<-x$get()
     inv<-solve(mat,...)       ##calculates inverse value
     x$setInverse(inv)
     inv
 }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
