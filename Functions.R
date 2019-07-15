# 1) concatenate String

#we use paste function to add two string

x = "Himanshu"
y = "chaubey"
paste(x ,y)

#with seprater
paste(x ,y , sep = ",")

# Extract or replace subsstring

x= "abcdef"

substr(x , 2 , 3) 

substr (x , 1 , 2) = "11"

print(x)

# 3) String length
x = "I love_ R__programming"
nchar (x)


# 4) extract word from string
x = "I love R programming"
library(stringr)
word(x , 1, sep = " ")
word(x , 2, sep = " ")
word(x , 3, sep = " ")
word(x , 4, sep = " ")

word(x , -1, sep = " ")
word(x , -2, sep = " ")
word(x , -3, sep = " ")
word(x , -4, sep = " ")


# for lower case upper case

tolower(x)
toupper(x)

#proper case
str_to_title(x)

# remove leading and traling spaces

a = "Himanshu chaubey "
trimws(a)


#convert multiple spaces to a single spaces

x = "     Himanshu    chaubey   "
library(qdap)  #java compalsary
Trim(clean(x))

