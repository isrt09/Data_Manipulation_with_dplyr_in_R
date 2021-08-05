require(dplyr)

# Load Dataset
df<- read.csv("demographics.csv", header=TRUE)

glimpse(df)

education <- df$educ

# Unique data
n_distinct(education)

income <- df$income

n_distinct(income)

# sample data techniques in many wats
sample_1 <- sample_n(df, 100)

sample_2 <- sample_n(df, 100, replace = TRUE)

id <- 1:5

items <- c("Apple", "Banana","Mango","Grapse","Pineapples")

dt <- data.frame(id,items)

sample_3 <- sample_n(dt, 100, replace = TRUE)

sample_4 <- sample_frac(df,0.5) 

sample_5 <- sample_frac(df,0.5, replace = TRUE) 

top_sample_1 <- top_n(df, 10, income)

# bind for row
x1 <- df[1:10,]

x2 <- df[200:300,]

x3 <- bind_rows(x1,x2)

# bind for columns
y1 <- df[, 1:3]

y2 <- df[, 4:8]

y3 <- bind_cols(y1,y2)
