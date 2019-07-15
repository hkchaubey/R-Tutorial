#Array is a three dimansional example of vector
#creat a matrix

colnames <- c("col1" , "col2" , "col3")
rownames <- c("row1" , "row2" , "row3")
matrixnames <- c("matrix1", "matrix2")

arr <- array(1:18, dim= c(3,3,2) , dimnames = list(rownames , colnames , matrixnames))
print(arr)

#third row of second matrix of the array

a1 <- arr[3,,2]
print(a1)

#first row third column of the 1 matrix
a2 <- arr[1,3,1]
print(a2)

#2 matrix
a3 <- arr[,,2]
print(a3)




