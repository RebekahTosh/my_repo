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

ggplot (data = se) +
  geom_point (aes(x=year, y=visitors, color = park_name)) +
  facet_wrap (~ state, scales = "free")

ggplot (data = se) +
  geom_jitter (aes(x=year, y=visitors, color = park_name),
               width = 0.1,
               aplha = 0.4) +
  coord_flip() +
  theme(legend.position = "none")

ggplot(se, aes(x=park_name, y=visitors)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle=45, hjust = 1))

ggplot(se, aes(x=year, y=visitors, color = park_name)) +
  geom_line()

ggplot(data = acadia, aes(x=year, y=visitors)) +
  geom_point() +
  geom_line() +
  geom_smooth(color = "blue", linetype = 2) +
  labs(title = "Acadia National Park Visitation", 
       y = "Visitation",
       x = "Year") +
  theme_bw()

ggplot(data = visit_16, aes(x=state, y=visitors, fill= park_name)) +
  geom_bar(stat = "identity", position = "dodge")

  my_plot <- ggplot(data = mass) + 
    geom_bar (aes(x=type, fill=park_name)) +
    theme(axis.text.x =element_text(angle=90, hjust = 1, size = 10))
  
  ggsave("name_of_file.png", my_plot, width = 15, height = 10)