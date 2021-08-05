require(dplyr)

# Load Dataset
df<- read.csv("demographics.csv", header=TRUE)

glimpse(df)

count(df)

count(filter(df, income < 100))

count(df, educ)

count(df, gender, retired)

count(df, gender, educ)

count(df, educ, gender)

count(df, gender)

count(df, gender,carcat)

count(df, gender, marital, carcat)

# This is best way to display categorical variables each other using dplyr ...