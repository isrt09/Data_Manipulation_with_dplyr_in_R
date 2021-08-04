require(dplyr)

# Load Dataset
data<- read.csv("C:/Users/user/Documents/dplyr/demographics.csv")

glimpse(data)

average <- summarise(data, avg = mean(income))

standard_deviation <- summarise(data, std = sd(income))

total_income <- summarise(data, sum = sum(income))

median  <- summarise(data, med = median(income))

maximum <- summarise(data, max = max(income))

minimum <- summarise(data, min = min(income))

variance<- summarise(data, var = var(income))

total_n <- summarise(data, n())

# all in together using summarise functions
summarise(data, avg=mean(income), std=sd(income), var=var(income), min=min(income),max=max(income), total =n())

summarise(filter(data, age > 55), avg=mean(income), std=sd(income), var=var(income), min=min(income),max=max(income),total =n())

summarise(filter(data, age > 55, carcat == 'Luxury'), avg=mean(income), std=sd(income), var=var(income), min=min(income),max=max(income),total =n())

summarise(filter(data, gender == 'Male'), avg=mean(income), std=sd(income), var=var(income), min=min(income),max=max(income),total =n())

summarise(data, across(c(1,5), mean))

summarise(data, across(where(is.numeric),mean))

summarise(filter(data, carcat =='Luxury'), across(where(is.numeric),mean))

summarise(filter(data, carcat =='Luxury'), across(where(is.numeric),sd))

dt <- select(data, age, income, carpr)

summarise(dt, across(everything(),mean))

# call the functions
average
variance
standard_deviation
total_income
median
maximum
minimum
total_n

# Base R
summary(data$income)








