cacheSolve<-function(x,...){
    s<-x$getsolve()
    if (!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    ## check if inverse matrix is empty, if not, then return the value and exit function
    input<-x$get()
    s<-solve(input)
    ## caculate inverse matrix and assign to s
    x$setsolve(s)
    s
}





