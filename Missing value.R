#represent missing value

x <- c(1,NA,3)
print(x)


#mathematical operation

y <- c(1,2,3)
print(y)

z <- x+y
print(z)



#applying function

Avg <- mean(x)
print(Avg)


#replace NA value in function
# we use na.rm= TRUE

Avg <- mean(x,  na.rm= TRUE)
print(Avg)


#check for missing value
# count the no of the 'NA' in vector "is.na()x"

cnt <- sum(is.na(x))
print(cnt)




