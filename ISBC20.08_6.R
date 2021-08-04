require(dplyr)

# Load Dataset
data<- read.csv("C:/Users/user/Documents/dplyr/demographics.csv")

glimpse(data)

# Group By
d1 <- group_by(data, educ) 

View(d1)

# Summary according to Group By
summarise(d1, avg = mean(income))
 
summarise(d1, std = sd(carpr))

# Filter Group
d2 <- filter(d1, age >40)

summarise(d2, avg = mean(income))

summarise(d2, across(c(1,4),mean))

summarise(filter(d2, carcat=="Luxury"), across(where(is.numeric), mean))