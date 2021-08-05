require(dplyr)

# Load Dataset
df<- read.csv("C:/Users/user/Documents/dplyr/demographics.csv")

glimpse(df)

# Set Operations
a <- 1:10

b <- c(2,4,6,8,10,12,16,18,20,24,26)

test_1 <- df[1:20,]

test_2 <- df[20:30,]

m <- c(10,20,30)

n <- c(10,20,30)

setequal(m,n)

intersect(a,b)
intersect(test_1, test_2)

union(test_1, test_2)
union(a,b)

setdiff(a,b)
setdiff(test_1,test_2)


