## load tidyverse packages
library(tidyverse)

##download the files from the website
##download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
##              "data/gapminder.csv"

gapminder <- read_csv("data/gapminder.csv")

life_exp_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_lifeExp <- mean(lifeExp))

life_exp_continent

life_exp_Canada <- gapminder %>% 
  filter(country == "Canada") %>% 
  select(year, lifeExp)

life_exp_Canada

mean_gdp_per_country <- gapminder %>% 
  filter(year == 1972) %>% 
  group_by(continent) %>% 
  summarize(mean_gdp = mean(gdpPercap))
mean_gdp_per_country
             
