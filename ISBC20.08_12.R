# Load Package / Library
require(dplyr)
require(ggplot2)

# Load Dataset
data<- read.csv("demographics.csv", header=TRUE)

# Dataset structure
glimpse(data)

# Average income per gender
data %>% 
  group_by(gender, marital) %>% 
  summarise(avg = mean(income, na.rm=TRUE)) 

# Visualize mean plot chart
data %>% 
  group_by(gender, marital) %>% 
  summarise(avg = mean(income, na.rm=TRUE)) %>% 
  ggplot(aes(x = gender, y = avg, color=marital, group=marital)) + geom_line()

data %>% 
  group_by(gender, marital) %>% 
  summarise(avg = mean(income, na.rm=TRUE)) %>% 
  ggplot(aes(x = marital, y = avg, color=gender, group=gender)) + geom_line()

data %>% 
  group_by(gender, marital) %>% 
  filter(carcat =="Economy") %>% 
  summarise(avg = mean(income)) %>% 
  ggplot(aes(x = marital, y = avg, group = gender, color = gender)) + geom_line()