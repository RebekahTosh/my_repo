install.packages("tidyverse")
library (tidyverse)

#National Parks in California
ca <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/ca.csv") 

#Acadia National Park
acadia <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/acadia.csv")

#Southeast US National Parks
se <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/se.csv")

#2016 Visitation for all Pacific West National Parks
visit_16 <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/visit_16.csv")

#All Nationally designated sites in Massachusetts
mass <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/mass.csv")

head (ca)

ggplot(data = ca) +
  geom_point (aes(x = year, y = visitors, colour = park_name)) +
  labs(x= "Year",
       y = "Visitation",
       title = "California National Park Visitation") +
  theme_light() +
  theme(legend.title=element_blank())

head (se)

ggplot(data = se) + 
  geom_point (aes(x = year, y = visitors, colour = park_name)) +
  labs(title = "Visitors to national parks in Southeast region") +
  theme_dark() +
  theme(legend.title = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1, size = 8))
  