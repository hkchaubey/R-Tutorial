#Matrix 2 dimansional of a vector

#to create matix we use matrix() function

#matrix(data ,nrow, ncol, byrow ,dimnames)

#Create a matrix

y <- matrix(1:20,  nrow=5, ncol=4, byrow = TRUE)
print(y)

y <- matrix(1:20,  nrow=5, ncol=4, byrow = FALSE)
print(y)

#use of Dimnames

rownames <- c("Row1" , "Row2" , "Row3" , "Row4", "Row5")
colnames <- c("Col1" , "Col2" , "Col3" , "Col4")

a<- matrix(1:20, nrow=5, ncol=4, byrow = TRUE , dimnames = list(rownames, colnames))
print(a)


#accessing element of the matrix
y <- a[2,1]
print(y)


#matrix shorter length

matrixs <- matrix(1:17, nrow=5, ncol=4, byrow=FALSE)
print (matrixs)


#matrix airthmetic operatiob in matrix

#no and rows and column should be same

matrix1 <- matrix(1:20 , nrow=5 , ncol=4 , byrow=FALSE)
matrix2 <- matrix(5:24 , nrow=5, ncol=4 , byrow=FALSE)

result1 <- matrix1 + matrix2
result2 <- matrix1 - matrix2
result3 <- matrix1 * matrix2
result4 <- matrix1 / matrix2

print(matrix1)

print(matrix2)

print(result1)
print(result2)
print(result3)  
print(result4)