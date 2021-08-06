# dplyr package load
require(dplyr)

# Load Dataset
cities    <- read.csv("C:/Users/user/Documents/dplyr/cities.csv")
buildings <- read.csv("C:/Users/user/Documents/dplyr/buildings.csv")

# dataset structure
glimpse(cities)
glimpse(buildings)

# display dataset
View(cities)
View(buildings)

# inner join workflow
inner_join_1 <- inner_join(cities, buildings)
inner_join_2 <- inner_join(buildings, cities)

glimpse(inner_join_1)
glimpse(inner_join_2)