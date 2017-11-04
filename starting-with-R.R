library(tidyverse)

download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
              "data/gapminder.csv")

gapminder <- read_csv("data/gapminder.csv")

life_exp_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_lifeExp <- mean(lifeExp))

life_exp_continent
