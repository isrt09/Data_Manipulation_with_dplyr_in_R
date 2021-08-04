require(dplyr)

# Load Dataset
df<- read.csv("demographics.csv", header="TRUE")

# Dataset Structure
glimpse(df)

# Select One Column
d1 <- select(df, age)

# Select Multiple Columns 
d2 <- select(df, age, gender, income, educ)

d3 <- select(df, age:carpr)

d4 <- select(df, c(age, gender, retired))

d5<- select(df, 1:3)

# Remove Single Column
d6 <- select(df, -age)

# Remove Multiple Columns
d7 <- select(df, -age, -income, -gender)

d8 <- select(df, -1)

d9 <- select(df, -1, -3, -5)

d10 <- select(df, -1:-3)

# column using contains, starts_with, ends_with

d11 <- select(df,contains("ret"))

d12 <- select(df, starts_with("in"))

d13 <- select(df, ends_with("cat"))
















