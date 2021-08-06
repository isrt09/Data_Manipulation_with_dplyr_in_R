# Load Package / Library
require(dplyr)
require(ggplot2)

# Load Dataset
data<- read.csv("demographics.csv", header=TRUE)

# Dataset structure
glimpse(data)

# carcat average mean by per categories
data %>% 
  group_by(carcat) %>% 
  summarise(avg = mean(carpr, na.rm=TRUE))

# Visualize carcat average mean by per categories
data %>% 
  group_by(carcat) %>% 
  summarise(avg = mean(carpr, na.rm=TRUE)) %>% 
  ggplot(aes(x = carcat, y = avg)) + geom_col(fill="darkblue")

# Average Income by per gender
data %>% 
  group_by(gender) %>% 
  summarise(avg = mean(income, na.rm=TRUE))

# Visualize average income mean by per gender
data %>% 
  group_by(gender) %>% 
  summarise(avg = mean(income, na.rm=TRUE)) %>% 
  ggplot(aes(x = gender, y = avg)) + geom_col(fill="red")