#Sample Data

mydata = data.frame(Q1 = sample(1:6, 100, replace = TRUE),
                    Q2 = sample(1:6, 100, replace = TRUE),
                    Q3 = sample(1:6, 100, replace = TRUE),
                    Q4 = sample(1:6, 100, replace = TRUE),
                    Age = sample(1:70, 100, replace = TRUE))



#calculate basic descriptive statistics
summary(mydata)


#calculate of a particular column
summary(mydata[3])



#calculate  a particular column by its name ..so we can use $ with column name
summary(mydata$Age)

#calculate no of variable in a dataset
colnames(mydata)


#calculate no of row
nrow(mydata)


#calculate no of column
ncol(mydata)

#structure of a data
str(mydata)


#see first 6 rows of dataset initially its take only 6 rows
head(mydata)


#first n row of dataset
#in the code below, we are selecting first 2 row of our data
head(mydata,n=2)


#all the row but the last row not use -(deselect) 
head(mydata, n=-1)

#last 6 row of dataset
tail(mydata)


tail(mydata,n=2)

#not select 1st row
tail(mydata, n=-1)


#install.packages("dplyr")

#select random rows from a dataset
library(dplyr)
sample_n(mydata, 5)

#select N% random row
library(dplyr)
sample_frac(mydata, 0.1)


#no of missing value
colSums(is.na(mydata))

#no of missing value in a single variable
sum(is.na(mydata$Q1))

