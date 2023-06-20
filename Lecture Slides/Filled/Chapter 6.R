#setwd("D:/Dropbox/Stat123")
#setwd("//home.uvic.ca/cmrkou/Desktop/Stat123")
#realEstate = read.csv("RealEstate.csv", header = TRUE)

library(tidyverse) #this will load ggplot2, dplyr, and other packages

# or 

library(ggplot2)   #just this if you only want to present graphics


ggplot()          # show an empty canvas


# Download grades.csv and rawgrades.csv from Brightspace


Grades.distn <- read.csv("grades.csv")

Grades.distn

#load tidyverse before using read_csv()

#Grades.distn <- read_csv("grades.csv")

# Vertical bar graph
ggplot(Grades.distn, aes(x = Grade, y = Count)) + geom_bar(stat = "identity")


# horizontal bar graph
ggplot(Grades.distn, aes(x = Count, y = Grade)) + geom_bar(stat = "identity")


# set colour of the bars
ggplot(Grades.distn, aes(x = Count, y = Grade)) + geom_bar(stat = "identity", fill = "red")


# set colour of the bars using colour code and add title and labellings:

ggplot(Grades.distn, aes(x = Grade, y = Count)) + geom_bar(stat = "identity", fill = "#FF6666") +
  ggtitle("Grade Distribution") + labs(y = "Frequency")


# set different colours for different bars

ggplot(Grades.distn, aes(x = Count, y = Grade, fill = Grade)) + geom_bar(stat = "identity") +
  ggtitle("Grade Distribution") + labs(x = "Frequency")

# different orientation

ggplot(Grades.distn, aes(x = Grade, y = Count, fill = Grade)) + geom_bar(stat = "identity") +
  ggtitle("Grade Distribution") + labs(x = "Frequency")



# data comes in without frequency counts yet

rawgrade <- read_csv("rawgrades.csv")

head(rawgrade)

# To produce frequency table

rawgrade %>% group_by(Grade) %>% count

# Same as above, Add the column name "Frequency"

rawgrade %>% group_by(Grade) %>% count(name = "Frequency")


# Produce bar graph

ggplot(rawgrade, aes(y = Grade)) + geom_bar()


ggplot(rawgrade, aes(x = Grade, y= after_stat(count/sum(count)), fill = Grade)) + geom_bar() +
  ggtitle("Grade Distribution") + labs(y = " Relative Frequency")


ggplot(rawgrade, aes(x = Grade, y= after_stat(100*count/sum(count)), fill = Grade)) + geom_bar() +
  ggtitle("Grade Distribution") + labs(y = " Relative Frequency (%)")




# histogram demo

?morley

# basic histogram

ggplot(morley, aes(x = Speed)) + geom_histogram()


mean(morley$Speed)

# add a vertical line to indicate the average speed from the data

# try it for median instead

ggplot(morley, aes(x = Speed)) + geom_histogram() + 
  geom_vline(xintercept = mean(morley$Speed), linetype = "dashed", size = 1.0)


# set histogram borders to red and the bars to green

ggplot(morley, aes(x = Speed)) + geom_histogram(color = "red", fill = "green") + 
  geom_vline(xintercept = mean(morley$Speed), linetype = "dashed", size = 1.0)


# change the width (interval length) of the bins

ggplot(morley, aes(x = Speed)) + geom_histogram(binwidth = 50, 
  color = "red", fill = "green") + 
  geom_vline(xintercept = mean(morley$Speed), linetype = "dashed", size = 1.0)


# limit the histogram to include values between 700 and 1000 only

ggplot(morley, aes(x = Speed)) + geom_histogram(aes(y = after_stat(count / sum(count))), 
  color = "red", fill = "green") + 
  geom_vline(xintercept = mean(morley$Speed), linetype = "dashed", size = 1.0) +
  xlim(700, 1000) 





# lineplots:

class(lynx)

Year <- 1821:1934
lynx.df <- as.data.frame(cbind(Year, lynx))
head(lynx.df)

ggplot(lynx.df, aes(x = Year, y = lynx)) + geom_line()



