require(dplyr)

# Load Dataset
data<- read.csv("demographics.csv")

# Dataset Structure
glimpse(data)

# Add New Column with many calculations
d1 <- mutate(data, bonus = income * 50)

d2 <- mutate(data, diff = income - carpr)

y<- rnorm(510, 0, 1)

d3 <- mutate(data, NEW_VAR = y)

d4 <- mutate(data, across(c(1,5), ~./1000,  .names = "{col}_2"))

d5 <- mutate(data, across(where(is.numeric), ~./1000))

d6 <- mutate(data, across(c(1,5), ~.*3, .names = "{col}_new"))

d7 <- mutate(data, across(c(1,5), .fns = mean, .names = "{col}_mean"))

d8 <- mutate(data, across(where(is.numeric), .fns = mean, .names = "{col}_mean"))

d9 <- mutate(filter(data, retired == "Yes"), across(c(1,5), ~./1000, .names = "{col}_2"))