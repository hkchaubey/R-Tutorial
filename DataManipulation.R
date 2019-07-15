#sample Data
mydata = data.frame(state=sample(c('Delhi' , 'Goa') , 25, replace = TRUE),
                               Q1= sample(1:25))



#replace data based on condition
#Delhi to Mumbai
#we need convert the variable from factor to characcter
class(mydata$state)

#conversion we use as.
mydata$state = as.character(mydata$state)
mydata$state[mydata$state=='Delhi'] <- 'Mumbai'


#View(mydata)

#in this example we replacing 2,3 and 12 with NA values in who check tje whole data set 
mydata[mydata==2 | mydata==3 | mydata==12] <- NA

#replace NA with 0
mydata[is.na(mydata)] <- 0


#use of IF and ELSE

#sample data

mdata = data.frame(x = c(rep(1:10)) , y=letters[1:10])

#if a value of x is grater than 6,
#we create a new variable t1 and write 2 against the correspond TRUE and 1 for false
mdata$t1 = ifelse(mdata$x>6 , 2,1)


#how to use AND condition
mdata$t3 = ifelse(mdata$x>1 & mdata$y=="b" ,2,1)


#nested ifelse
mdata$t4 =  ifelse(mdata$x>=1 & mdata$x<=4,1,
                   ifelse(mdata$x>=5 & mdata$x<=7 ,2,3))

#keeping and dropping value
#in this example we keep only first two variable

#in this example , we keep only first two variable

mydata1 <- mdata[, 1:2]


#we keep first and third and fifth column

mydata2 <- mdata[c(1,3,6)]

mydata2 <- mdata[c(1,3:6)]

#for select row and column
mydata3 <- mdata[1:6, c(1,3,6)]


#we select variable using their name 
newdata <- mdata[c("y" , "t1")]
print(newdata)


#deleting a particular column
mydata1 <- mdata[-5]
print(mydata1)


#de-selecting multiple column
mydata1 <- mdata[-(3:6)]
print(mydata1)


mydata1 <- mdata[-c(1,3:6)]
print(mydata1)

# mdata[1,] for particular row
#dropping /remove t2 variable
mdata$t2 <- NULL



#subset
#selecting value where Q1 is equal to 3
mdata<- subset(mydata , Q1==3)
print(mdata)


#conditional statement & while selecting observation
newdata <-subset(mydata, state=="Goa" & Q1>=10)
print(newdata)

#conditional operation | (OR) while selecting observation
mdata1<- subset(mydata,state=="Goa" | Q1>=3)
print(mdata1)


#checking missing value

mydata = data.frame(state=sample(c('Delhi' , 'Goa',NA) , 25, replace = TRUE),
                    Q1= sample(1:25))

#keep only missing value
newdata <- subset(mydata , is.na(state))
print(newdata)


#kepp only non-missing record ! use this sign exclamanation for not=
newdata <- subset(mydata , !is.na(state))
print(newdata)


#sorting a data frame

mydata = data.frame(state=sample(c('Delhi' , 'Goa') , 25, replace = TRUE),
                    Q1= sample(1:25))

#sort sate variable in assending order
mydata$state = as.character(mydata$state)
mydata_sorted <- mydata[order(mydata$state, decreasing = TRUE), ]
print(mydata_sorted)


#decreasing order
mydata_sorted1 <- mydata[order(mydata$state, -mydata$Q1), ]
print(mydata_sorted1)

#NOTE : "-" before mydata$Q1 tells to R to sort the variable in descending order

#dealing with missing data

#no of missing vakues in a variable
colSums(is.na(mydata))
rowSums(is.na(mydata))

#combine two data set based on column and row
mydata1 <- data.frame(Q1 =sample(1:25))
mydata2 <- data.frame(Q1 = sample(26:50))

newdata <- cbind (mydata1 , mydata2)

print(mydata1)
print(mydata2)
print(newdata)


#for row bind
mydata1 <- data.frame(Q1 =sample(1:25), Q2 = sample(11:35))
mydata2 <- data.frame(Q1 = sample(26:50), Q2 = sample(46:70))
newdata<-rbind (mydata1,mydata2)

print(mydata1)
print(mydata2)
print(newdata)






