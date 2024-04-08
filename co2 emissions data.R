library(dplyr)
library(magrittr)
library(tidyverse)

co2 <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/co2.csv")
gapminder <- read_csv('https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/gapminder.csv')

co2 %>% head()
co2 %>% dim()

gap_2007 <- gapminder %>% 
  filter(year == 2007)

gap_2007 %>% dim()

lj <- left_join(gap_2007, co2, by = "country")

summary(lj)

rj <- right_join(gap_2007, co2, by = "country")

summary(rj)
