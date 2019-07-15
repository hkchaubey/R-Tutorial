mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header =FALSE )

mydata <- write.csv(mydata,"C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata2.csv")

 

  
mydata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata.csv" , header =FALSE )

 
mydata <- write.csv(mydata,"C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/empdata3.csv" , row.names= FALSE) 


 #for export txt file

 write.table(mydata,
             "C:/Users/lenovo/Desktop/Data Analytics/Excel/New folder/test.txt",
             sep = ",", row.names = FALSE, col.names = FALSE,
             quote = FALSE)
