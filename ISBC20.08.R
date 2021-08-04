library(dplyr)

require(dplyr)

demo<- read.csv("demographics.csv", header="TRUE")

View(demo)

demo2 <- filter(demo, income > 55)

View(demo2)

demo3 <- filter(demo, income == 60)

View(demo3)

demo4 <- filter(demo, marital == 'Married')

View(demo4)

demo5 <- filter(demo, income > 50 , marital == 'Married')

View(demo5)

demo6 <- filter(demo, income > 50, marital == 'Married', carcat == 'Luxury')

View(demo6)

demo7 <- filter(demo, age > 35, age < 45)

View(demo7)

demo8 <- filter(demo, age < 30, age > 50)

View(demo8)

demo9 <- filter(demo, income > 55 | marital == 'Married')

View(demo9)

demo10 <- filter(demo, age %in% c(45,50,60))

View(demo10)

demo11 <- filter(demo, !age %in% c(45,50,60))

View(demo11)
