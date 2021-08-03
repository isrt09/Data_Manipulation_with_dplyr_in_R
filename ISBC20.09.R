# Gapminder Datasets
install.packages("gapminder")

# Load Dataset
library(gapminder)

# Top 5 Five data display
head(gapminder)

# Last 5 Five data display
tail(gapminder)

# Dimensions
dim(gapminder)

# Data Structure
str(gapminder)

# Summary
summary(gapminder)

# Single Column Summary
summary(gapminder$lifeExp)

# Load Dplyr
library(dplyr)

# Single Column selection using dplyr
select(gapminder, country)

# Multiple Columns selection using dplyr
select(gapminder, country, continent, year)

# Remove Single Column using dplyr
select(gapminder, - gdpPercap)

# Remove Multiple Columns using dplyr
select(gapminder, -c(gdpPercap,pop))

# Select single column using colon (:) operator
select(gapminder, country:year)

# Select single column using contains
select(gapminder, contains("c"))

# Select multiple columns using contains
select(gapminder, contains("c"), contains("g"))

# Select single column using starts_with
select(gapminder, starts_with("c"))

# Select single column using ends_with
select(gapminder, ends_with("p"))

# Pipe Operator (Chaining Method)
gapminder %>% 
  select(country, continent, year) %>% 
  head()

gapminder %>% 
  count()

gapminder %>% 
  count(country)

gapminder %>% 
  select(country, pop) %>% 
  count(country, wt = pop, sort = TRUE)



















