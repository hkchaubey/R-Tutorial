storedata <- data.frame(
  Store = paste("s",sample(1:3, 15 ,replace = TRUE), sep = ""),
  Productclass = sample(1:2, 15 ,replace = TRUE),
  Month = sample(1:3 , 15 , replace = TRUE),
  Sales = runif(15)*100,
  Profit = runif(15)*5)

# 1) frequency count

table(storedata$Store)
table(storedata$Store , storedata$Productclass)
table(storedata$Store , storedata$Productclass , storedata$Month)



#save in output table
mytable <- table(storedata$Store)
mytable <- table(storedata$Store , storedata$Productclass)
mytable <- table(storedata$Store , storedata$Productclass , storedata$Month)



#frequency
margin.table(mytable , 1) #storedata$Store frequency
margin.table(mytable , 2) #storedata$Productclass frequency
margin.table(mytable , c(1,2)) #cross table frequency


# cell percentage
prop.table(mytable) #cell percentage
prop.table(mytable,1) # Row per
prop.table(mytable,2) # Column percentage

#Summarized Data
# syntax - aggregate (AnalysisVar  ~GroupVar , data= , fun =)

#calculate average store sales
aggregate(Sales ~Store , data= storedata, FUN = mean)
aggregate(Sales ~Store+Month , data= storedata, FUN = mean)
aggregate(Sales ~Store+Month+Productclass , data= storedata, FUN = mean)

aggregate(cbind(Sales,Profit) ~Store , data= storedata, FUN = mean)

aggregate(cbind(Sales,Profit) ~Store , data= storedata, FUN = max)
