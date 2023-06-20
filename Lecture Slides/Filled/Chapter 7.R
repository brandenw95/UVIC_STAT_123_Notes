#Chapter 7

require(tidyverse)

?airquality

head(airquality)

temp.samp <- sample(airquality$Temp, 10)
temp.samp
temp.samp %>% arrange(temp.samp) 

# gives error because temp.samp is not a data frame
# dplyr is fuzzy about this.

class(temp.samp)

temp.samp <- as.data.frame(temp.samp)
temp.samp %>% arrange(temp.samp)


sort(airquality$Temp)

length(airquality) # of columns in data frame

length(airquality$Temp)

middle = (length(airquality$Temp)+1)/2

med = sort(airquality$Temp)[middle]
med

median(airquality$Temp)

quantile(airquality$Temp, 0.25)

quantile(airquality$Temp, 0.75)

quantile(airquality$Temp)

summary(airquality$Temp)

boxplot(airquality$Temp)  # using built-in R capability

# not in notes
# boxplot using ggplot2

ggplot(airquality, aes(y = Temp)) + geom_boxplot()

class(airquality$Month)

# To produce side-by-side boxplot, we have to make Month 
# a categorical variable by using the as.factor() command

ggplot(airquality, aes(x = as.factor(Month), y = Temp)) + geom_boxplot()


#sample variance
var(airquality$Temp)

#sample standard deviation
sd(airquality$Temp)

#or

sqrt(var(airquality$Temp))

#For population variance when your data set is for the population:
#population size n

n=length(airquality$Temp)

var(airquality$Temp)*(n-1)/n


#outlier

#20 is an outlier

samp = c(100, 107, 98, 20, 105)

mean(samp)
median(samp)

#If you have an outlier that is small, then the mean will be smaller than
#the median.


