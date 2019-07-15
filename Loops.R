# For
# While
# Apply Function


#sample data for "for" loop

mydata <- data.frame(x= c(1:5,NA),
                     y= c(1,1,0,0,NA,0),
                     z= 5*c(1:6))

maxvalue <- NULL

for (i in 1:ncol(mydata)){
  maxvalue[i]=max(mydata[i],na.rm = TRUE)
  print(maxvalue[i])

}

#While loop

i=1
while(i<7)
{
  print(i)
  i=i+1
}

# Apply function

# The iteration would start from 1 to 6 (i. e. i<7).
# It stops when condiittion is false.

#apply

#average value at row lavel
apply(mydata , 1, mean , na.rm = TRUE)

#avg value at column level
apply(mydata , 2, mean , na.rm = TRUE)

#lapply function

mydata <- data.frame(x= c(1:5),
                     y= c(1,1,0,0,0),
                     z= 5*c(1:5))
print (mydata)

lapply(mydata , function(a)  a+1)


#lapply for list
ldata = list(x = 1:5 , y = 6:10 , z = 11:15)
print(ldata)

lapply(ldata , FUN=max , na.rm=TRUE)

#sapply function

sapply(mydata, function(a) a+1)

sapply(ldata , FUN= sum , na.rm=TRUE)


#tapply function

library(datasets)
mydata <- data.frame(Titanic)
head(mydata)

tapply(mydata$Freq , mydata$Class , sum , na.rm=TRUE)
