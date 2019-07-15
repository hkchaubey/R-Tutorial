#R object
#vector one dimansional data type

#list

#matrix

#array

#factors

#Data frame


# numeric value
Vct_Num = 23.5
print(Vct_Num)

#char data type -should be in single and double Quotation

Vct_Char <- "Himanshu Chaubey"
print(Vct_Char)


#Logical data type -TRUE/T and FALSE/F (All are in capital)

Vct_log1 = True

Vct_log2 = T

#Vct_lgl1 <- True give Error(boolein valuve)



# creating vactor with more than one eliment
#Name <- c("Himanshu Chaubey", "rohit")
#print(Name)

#Vct_Num = c(10,20,30,56,78)
#print(Vct_Num)

#Vct_lg1 <- C(TRUE , FALSE , T , F)


# Combination of diff Data Type
# Logical1 -> Numeric -> Char 

comb1 = c("Apple" , "Mango" , 10 , TRUE)
print(comb1)

comb2 = c(10 , 30, 50, TRUE , FALSE)
print(comb2)


#Create a Vector of numbers differ by 1
#use ':' operator
x1 <-  1:10
print(x1)

x2 <-  32:-8
print(x2)

x3 <-  4.3:23.8
print(x3)


# Creating a vector of number using seq() function
# Syntax -  seq(from= , to= , by= , length=)

x4 <- seq(from=1 , to=24 , by=2)
print(x4)

x5 <- seq(from=1 , by=2.5 , length=20)
print(x5)

x6 <- seq(from=3 , to=6 , length=10)
print(x6)

#Repeat same value in a vector
#using rap function

 y1 <- rep(0,10)
 print (y1)

 y2 <- rep(c(1,2,3),3)
 print(y2)
 
#concanigate string 
 
 x <- 1:5
 y <-6:10
  z <- c(x,y)
 print(z)
 
 
 #length of a vector
 #length() function
 z <- 1:6
 len <- length(z)
 print(len)
 
 
 #mathematical aperation
 
 
 a <- 1:10
 print(a)
 
 a2 <- a*5
 print(a2)
  
 #mathematical operation beteen two vactor
 # length of two vector should be same

 a <- c(1,3,5,7,9)
 b <-c(0.1,0.2,0.3,0.4,0.5)
 c <- a+b
 print(a)
 print(b)
 print(c)
 
#if length is not same
 #give warning and do repetation
# Warning message:
   #In a + b : longer object length is not a multiple of shorter object length
 a <- c(1,3,5,7,9)
 b <-c(0.1,0.2,0.3,0.4,0.5,0.7)
 c <- a+b
 #print(a)
# print(b)
 print(c)
 
 
#Accessing Indivisual item in a vector using subscripts 
 
 x <- 13:29 
 print (x)
 
 y1 <- x[1]
 print(y1)
 
 y2 <- x[1:4]
 print(y2)
 
 y4 <- x[c(1,3,5,7)]
 print(y4)
 
 y5<- x[8:14]
 print(y5)
 

 #reverse element
 #use - for skip value
 
 y6 <-x[-2]
 print(y6)
 
 y7 <- x[(-2:-6)]
 print (y7)
 
 y8<- x[c(-2,-6)]
 print(y8)
 
 y9<- x[-c(2,6,8)]
 print(y9)
 
  
 
 