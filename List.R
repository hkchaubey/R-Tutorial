#list multipule type value store

#create list
listvar <- list(c(2,4,5),21.3,TRUE,"Himanshu")
print(listvar)


#by name
mylist <- list(name = c("ram" , "rahim") , age = c(69,76) , retired = c(TRUE , FALSE))

print(mylist)


#access element of thr list
mylist$retired
mylist$name


#indivisual components of list can be accessed by three way

#1. by using with $ notation
mylist$name

# 2. by using [ ] notation
mylist ["age"]

#3. by position using the [[]] notaton

mylist[[3]]

mylist[[1]][2]
mylist[[1]][1]


list <- c(c(2,4),4,5)
print (list)

list [[1]][2] 