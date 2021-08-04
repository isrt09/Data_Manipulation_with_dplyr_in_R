require(dplyr)

# Load Dataset
data<- read.csv("C:/Users/user/Documents/dplyr/demographics.csv")

# dataset structure
glimpse(data)

d1 <- arrange(data, income)

d2 <- arrange(data, desc(income))

d3 <- arrange(data, educ)

d4 <- arrange(data, desc(educ))

d5 <- arrange(data, income, educ)

d6 <- arrange(data, educ, income)

d7 <- arrange(data, income, desc(educ))
