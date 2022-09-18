setwd("C:\\Users\\DeekshaBhardwaj\\Desktop\\R prog Swirl\\ProgrammingAssignment2")

## creating makeCacheMatrix that will create a special "matrix" object to cache 
## its inverse for the input (which is an invertible square matrix).

## Write a short comment describing this function
##Creating a 3x3 matrix with a sample of first 100 numbers. This input variable will be named x.
##setting the solved value s as NULL.
##The function used for calculating inverse is 'Solve' function.

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
               s<-NULL
               set<-function(y){
                 x<<-y
                 s<-NULL
               }
               get<-function() x
               setsolve<- function(solve) s<<-solve
               getsolve<- function() s
               list(set=set,get=get,
                    setsolve=setsolve,
                    getsolve=getsolve)
}


## Write a short comment describing this function
##Creating a cacheSolve function that computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
          s<-x$getsolve()
        if(!is.null(s)){
          message("getting inversed matrix")
          return(s)
        }
        data<-x$get()
        s<-solve(x,...)
        x$setsolve(S)
        s   
}
