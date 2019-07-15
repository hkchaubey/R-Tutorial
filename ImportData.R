mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header = TRUE)
class(mydata)
#View(mydata)

#with headre false header look like V1,V2,V3
mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header =FALSE )
class(mydata)


#if we want to set any missing value
mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header =FALSE , 
                   na.strings = c("." , "Null" , "None"))
class(mydata) 


#skip no of initial row
mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header =FALSE,
                   nrows=5)
class(mydata)


#skip no of initial rows

mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header =FALSE, 
                   skip = 3)
class(mydata)


#read excel file

install.packages("readxl")

library(readxl)

mydataExcel <- read_excel("C:/Users/lenovo/Desktop/Data Analytics/R/one.xlsx")
class(mydataExcel)

#
mydataExcel <- read_excel("C:/Users/lenovo/Desktop/Data Analytics/R/one.xlsx" ,sheet = 1)
class(mydataExcel)




 #write.csv(mydata,"C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata1.csv")
