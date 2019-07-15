library(sqldf)

storedata <- data.frame(
   Store = paste("s",sample(1:3, 15 ,replace = TRUE), sep = ""),
   Productclass = sample(1:2, 15 ,replace = TRUE),
   Month = sample(1:3 , 15 , replace = TRUE),
   Sales = runif(15)*100,
   Profit = runif(15)*5)

print(storedata)

#run query

mydata <- sqldf("select * from storedata")
print(mydata)

mydata1 <- sqldf("select * from storedata where Store = 's1'")
print(mydata1)


mydata2 <- sqldf("select * from storedata  order by Profit" )
print(mydata2)


mydata3 <- sqldf("select Store , Sum(Profit) as Total_Profit 
                 from storedata group by Store")

print(mydata3)


