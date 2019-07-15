squareit = function(x)
  
{
  square <- x*x
  return(square)
}


#call Function

z <- squareit(20)
print(z)


#return ultiple value

newfunction <- function(x,y,z)
{
  square <- x*x
  double <- 2*y
  quabe <- z*z*z
#save both result in a list and return
final <- list(square , double , quabe)
return(final)
}


#call function and save result in a list object call outcome 

outcome <- newfunction( 10 , 20,5)
print(outcome)


# seperate operator object using the [[]] operator

outcome[[1]]

