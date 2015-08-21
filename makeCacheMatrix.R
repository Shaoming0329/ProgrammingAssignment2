makeCacheMatrix<-function(x=matrix()){
    s<-NULL
    ##set initial value to inverse matrix s
    set<-function(y){
        x<<-y       
        s<<-NULL
        ##reassign new value from set() function to x, thus can change input matrix input
    }
    get<-function() x
    ## get the input matrix
    setsolve<-function(solve_matrix) s<<-solve_matrix
    ## assign the input inverse matrix to the output
    getsolve<-function() s
    ## retrieve the inverse matrix to output
    list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
    ## the output is a special list of functions
}





