#Dataframe is a table or a two -dimansional array like structure 

#property of DF

# column name should be empty
#row name should be unique
#each column should contain same no of data


empdata <- data.frame(emp_id = c(1:5) , 
                      emp_name = c("ricky" , "jain" , "jyoti" , "garry" , "himanshu"), 
                      salary = c(600 , 700 , 800, NA , 1000))

#View (empdata)
#get the structure of the data

str (empdata)


#get the summary

summary(empdata)


#get the structure of a data frame
empdata <- data.frame(emp_id = c(1:5) ,
                      emp_name = c("ricky" , "jain" , "jyoti" , "garry" , "himanshu"),
                       
                       gender = c("Male" , "Female" , "Male" , "Female" ,NA), 
                      salary = c(600 , 700 , 800, NA , 1000))
str(empdata)



#get name of data frame column
names(empdata)


#Rename Data Frame column
names (empdata) <- c("ID" , "NAME" , "Emp_Gen" , "Emp_salary")
names(empdata)

#View(empdata)

#Extract first two rows
result <- empdata[1:2 ,]
print(result)



result <- empdata[1,3]
print(result)


#add new column
empdata$dept <- c("IT" , "CSE" , "HR" , "Finance" , "operations")
print(empdata)

#View(empdata)
#add column
empdata$Bonus <- empdata$Emp_salary * .10

#add column for new_salary
empdata$New_salary <- empdata$Emp_salary + empdata$Bonus

print (empdata)

#remove a column

empdata$Emp_Gen <- NULL
print(empdata)


#cnt <- sum (is.na(emp_data$Emp_salary))
#print(cnt)
