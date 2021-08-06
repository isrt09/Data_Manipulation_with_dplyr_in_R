# dplyr package load
require(dplyr)

# Load Dataset
cities    <- read.csv("cities.csv",    header=TRUE)
buildings <- read.csv("buildings.csv", header=TRUE)

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

# semi join workflow
semi_join_1 <- semi_join(cities, buildings)
semi_join_2 <- semi_join(buildings, cities)

glimpse(semi_join_1)
glimpse(semi_join_2)

# left join workflow
left_join_1 <- left_join(buildings, cities)
left_join_2 <- left_join(cities, buildings)

# anti join workflow
anti_join_1 <- anti_join(cities, buildings)
anti_join_2 <- anti_join(buildings,cities)

# full join workflow
full_join_1 <- full_join(cities,buildings)
full_join_2 <- full_join(buildings,cities)
