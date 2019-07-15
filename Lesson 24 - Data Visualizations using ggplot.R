# Setup
options(scipen=999)  # turn off scientific notation like 1e+06

library(ggplot2)
midwest <- read.csv("http://goo.gl/G1K41K")

# Init Ggplot
ggplot(midwest, aes(x=area, y=poptotal))  
# area and poptotal are columns in 'midwest'

# a) Scatterplot
library(ggplot2)
ggplot(midwest, aes(x=area, y=poptotal)) + geom_point()

# Linear Regression Model
library(ggplot2)
g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")  
plot(g)

# Delete the points outside the limits
g1 <- g + xlim(c(0, 0.1)) + ylim(c(0, 1000000)) 
plot(g1)

# Change the Title and Axis Labels
g2 <- g1 + labs(title="Area Vs Population", y="Population", x="Area", caption="Midwest Demographics")
plot(g2)

# Full Plot call
library(ggplot2)
ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point() + 
  geom_smooth(method="lm") + 
  coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", y="Population", x="Area", caption="Midwest Demographics")

# Change the Color and Size of Points
library(ggplot2)
ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(col="steelblue", size=3) +   # Set static color and size for points
  geom_smooth(method="lm", col="firebrick") +  # change the color of line
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", y="Population", x="Area", caption="Midwest Demographics")

# Change the Color To Reflect Categories in Another Column
library(ggplot2)
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state), size=3) +  # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=2) + 
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", y="Population", x="Area", caption="Midwest Demographics")
plot(gg)

# Customize the Graph Theme
library(ggplot2)

# Base plot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state), size=3) +  # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=2) + 
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", y="Population", x="Area", caption="Midwest Demographics")

# method 1: Using theme_set()
theme_set(theme_classic())
gg

# method 2: Adding theme Layer itself.
gg + theme_bw() + labs(subtitle="BW Theme")
gg + theme_classic() + labs(subtitle="Classic Theme")

# b) Pie Chart
df <- data.frame(group = c("Male", "Female", "Child"),value = c(17, 7, 12))
print(df)

pie <- ggplot(df, aes(x="", y=value, fill=group))
plot(pie)

pie = pie + geom_bar(width = 1, stat = "identity") + coord_polar("y", start=0) 
plot(pie)

pie = pie + scale_fill_brewer("Blues") 
plot(pie)

pie = pie + theme(axis.text.x=element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.border = element_blank(),
        panel.grid=element_blank(),
        axis.ticks = element_blank())

plot(pie)

library(formattable)
pie = pie + geom_text(aes(y = value/3 + c(0, cumsum(value)[-length(value)]), 
                label = percent(value/sum(value),0)), size=4)
plot(pie)

# 3) Bar Plot
df <- data.frame(dose=c("D0", "D1", "D2"), len=c(4.2, 10, 29.5))
print(df)

p <-ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity")
plot(p)

# Horizontal bar plot
p + coord_flip()

# Change the width of bars
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", width=0.5)

# Change colors
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", color="blue", fill="gray")

# Minimal theme + blue fill color
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", fill="steelblue") + theme_minimal()

# Bar plot with labels
# Outside bars
ggplot(data=df, aes(x=dose, y=len)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=len), vjust=-0.3, size=3.5)+
  theme_minimal()

# Inside bars
ggplot(data=df, aes(x=dose, y=len)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=len), vjust=1.6, color="white", size=3.5)+
  theme_minimal()

# Change barplot fill colors by groups
ggplot(df, aes(x=dose, y=len, fill=dose)) + geom_bar(stat="identity")+theme_minimal()

# 3.1 Stacked Barplot
df2 <- data.frame(supp=rep(c("VC", "OJ"), each=3),
                  dose=rep(c("D0", "D1", "D2"),2),
                  len=c(6.8, 15, 33, 4.2, 10, 29.5))
print(df2)

# Stacked barplot with multiple groups
ggplot(data=df2, aes(x=dose, y=len, fill=supp)) + geom_bar(stat="identity")

# Use position=position_dodge()
ggplot(data=df2, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity", position=position_dodge())

# Change the colors
ggplot(data=df2, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity", color="black", position=position_dodge())+
  theme_minimal()

# Add labels
ggplot(data=df2, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=len), vjust=1.6, color="white",
            position = position_dodge(0.9), size=3.5)+
  scale_fill_brewer(palette="Paired")+
  theme_minimal()

# 4) Box Plot
library(ggplot2)
ToothGrowth <- ToothGrowth

# Convert the variable dose from a numeric to a factor variable
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
head(ToothGrowth)

library(ggplot2)
# Basic box plot
p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_boxplot()
plot(p)

# Rotate the box plot
p + coord_flip()

# Notched box plot
ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_boxplot(notch=TRUE)

# Change outlier, color, shape and size
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)

# Box plot with mean points
p + stat_summary(fun.y=mean, geom="point", shape=23, size=4)

# Change box plot line colors by groups
p <- ggplot(ToothGrowth, aes(x=dose, y=len, color=dose)) + geom_boxplot()
plot(p)

# Use single color
ggplot(ToothGrowth, aes(x=dose, y=len)) +
  geom_boxplot(fill='#A4A4A4', color="black")+
  theme_classic()

# Change box plot colors by groups
p <-ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) + geom_boxplot()
plot(p)

# Change box plot colors by groups
ggplot(ToothGrowth, aes(x=dose, y=len, fill=supp)) + geom_boxplot()

# Change the position
p <- ggplot(ToothGrowth, aes(x=dose, y=len, fill=supp)) +
  geom_boxplot(position=position_dodge(1))
plot(p)

# 5) Histogram
df <- data.frame(sex=factor(rep(c("F", "M"), each=200)),
  weight=round(c(rnorm(200, mean=55, sd=5), rnorm(200, mean=65, sd=5))))
head(df)

# Basic histogram plots
library(ggplot2)

# Basic histogram
ggplot(df, aes(x=weight)) + geom_histogram()

# Change the width of bins
ggplot(df, aes(x=weight)) + geom_histogram(binwidth=1)

# Change colors
p <-ggplot(df, aes(x=weight)) + geom_histogram(color="black", fill="blue")
plot(p)

# Add mean line
p+ geom_vline(aes(xintercept=mean(weight)),
              color="black", linetype="dashed", size=1)

# Change histogram plot fill colors by groups
ggplot(df, aes(x=weight, fill=sex, color=sex)) +
  geom_histogram(position="identity")

# Use semi-transparent fill
p <-ggplot(df, aes(x=weight, fill=sex, color=sex)) +
  geom_histogram(position="identity", alpha=0.5)
plot(p)

# 6) Line Chart
df <- data.frame(dose=c("D0", "D1", "D2"), len=c(4.2, 10, 29.5))
print(df)

library(ggplot2)
# Basic line plot with points
ggplot(data=df, aes(x=dose, y=len, group=1)) + geom_line() + geom_point()

# Change the line type
ggplot(data=df, aes(x=dose, y=len, group=1)) +
  geom_line(linetype = "dashed")+
  geom_point()

# Change the color
ggplot(data=df, aes(x=dose, y=len, group=1)) +
  geom_line(color="red")+
  geom_point()

# Line plot with multiple groups
df2 <- data.frame(Store=rep(c("S1", "S2"), each=3),
                  QTR=rep(c("Q1", "Q2", "Q3"),2),
                  Sales=c(6.8, 15, 33, 4.2, 10, 29.5))
head(df2)

# Line plot with multiple groups
ggplot(data=df2, aes(x=QTR, y=Sales, group=Store)) +
  geom_line()+
  geom_point()

# Change line types
ggplot(data=df2, aes(x=QTR, y=Sales, group=Store)) +
  geom_line(linetype="dashed", color="blue", size=1.2)+
  geom_point(color="red", size=3)

# Change line colors by groups
p = ggplot(data=df2, aes(x=QTR, y=Sales, group=Store)) +
  geom_line(aes(color=Store))+
  geom_point(aes(color=Store))
plot(p)
