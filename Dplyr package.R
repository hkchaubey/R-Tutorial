# Dplyr function     | Description                 |Equivalent
# select()           | selecting columns(vari)     |SELECT
# filter()     |

sampledata <- read.csv("C:/Users/lenovo/Desktop/Data Analytics/R/Data/sampledata.csv")

#install.package('reshape')
library(reshape2)

library(dplyr)

#select function

#select() syntax : select (data , ....)
#data : Data Frame

mydata2 <- select(sampledata,Index ,State , Y2008)
head(mydata2)


#de select value
mydata2 <- select(sampledata,-Index ,-State)
head(mydata2)


#the start_with() used to select variable start with Y
mydata3 <- select(sampledata , starts_with ("Y"))
head(mydata3)

mydata3 <- select(sampledata , -starts_with ("Y"))
head(mydata3)

#Helpers
#ends_with()
#contains()
#matches()
#num_range()
#everything()

mydata3 <- select(sampledata ,contains ("I"))
head(mydata3)


mydata4 <- select(sampledata, State, Y2012,everything())
head(mydata4)

mydata5 <- select(sampledata ,ends_with("y2008"))
head(mydata5)

mydata8 <- select(sampledata ,matches("Y2009"))
head(mydata8)


mydata6 <- select(sampledata ,num_range('Y' , 2012:2015))
head(mydata6)


#rename a variable
mydata7 = rename (sampledata , ID=Index)
colnames(mydata7)


#filter
mydata9 <- filter(sampledata, Index=="A")
head(mydata9)


#summarise() function

summarise(sampledata , Y2015_mean = mean(Y2015),
          y2015_med = median(Y2015))

#summarise_at() for multiple data
summarise_at(sampledata, vars(Y2005, Y2006, Y2007 , Y2008),
             funs(n(), mean , median))


#group_by()
summarise_at(group_by(sampledata , Index),
             vars(Y2015),funs( n() , mean , median))


#arrange() function

# Use. Sort data
mydata10 <- arrange(sampledata , Index ,Y2009)


mydata11 <- arrange(sampledata , desc(Index) ,Y2009)


#join()

#inner_join(x,y,by=)
#left_join(x,y,by=)
#right_join(x,y,by=)
#full_join(x,y,by=)
#semi_join(x,y,by=)
#anti_join(x,y,by=)

df1 <-data.frame(ID = c(1,2,3,4,5),
                  w=c('a','b','c','d','e'),
                  x=c(1,1,0,0,1),
                  y=rnorm(5),
                  z=letters[1:5])



df2 <-data.frame(ID = c(1,2,9,4,7),
                  a=c('s','q','c','g','e'),
                  b=c(1,2,0,6,1),
                  c=rnorm(5),
                  d=letters[2:6])


colnames(df1)
colnames(df2)

#inner join
df3 <- inner_join(df1 , df2 , by = "ID")
print(df3)



df3 <- inner_join(df1 , df2 , by = c("w" = "a"))
print(df3)

#left join right join
df3 <- left_join(df1 , df2 , by = "ID")
print(df3)

df3 <- right_join(df1 , df2 , by = "ID")
print(df3)

#fulljoin
df3 <- full_join(df1 , df2 , by = "ID")
print(df3)


#mutate() function

# Syntax : mutate(data_frame, expression(s))

mydata1 = mutate(sampledata , change=Y2015/Y2014)
head(mydata1)


