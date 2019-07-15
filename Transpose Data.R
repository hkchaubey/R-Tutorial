library(dplyr)
library(reshape2)

Transdata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/R/Data/Transpose Data.csv")

pivodata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/R/Data/pivotdata.csv")


# dcast() function
 
mydt <- dcast(Transdata , Store ~ Day , value.var = "Sales" )
print(mydt)

mydt1 <- dcast(Transdata ,   Sales ~Day , value.var = "Store" )
print(mydt1)


#reverse mydt to sample data

x = colnames(mydt[, -1]) 

tmydt = melt(mydt, id.vars = "Store" , measure.vars = x , 
             variable.name = "Day" , value.name = "Sales",
             na.rm = TRUE)
print(tmydt)



#Sample Data

#create pivo table

#mean
mypivo_mean <- dcast(pivodata, Province ~ Customer_Segment,
                     fun.aggregate = mean , value.var = "Profit")
print(mypivo_mean)

#Sum
mypivo_sum <- dcast(pivodata, Province ~ Product_Category,
                     fun.aggregate = sum ,
                    value.var = "Order_Quantity")
print(mypivo_sum)


#
mypivo_mean <- dcast(pivodata, Province ~ Customer_Segment,
                     fun.aggregate = mean , value.var = "Profit")
print(mypivo_mean)








