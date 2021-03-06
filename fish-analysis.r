library(tidyverse)

fish_data <- read.csv("Gaeta_etal_CLC_data_1.csv", stringsAsFactors = FALSE)

fish_data_cat <- fish_data %>% mutate(length_cat = ifelse(length > 300, "big", "small")) %>% 
  filter(scalelength >= 1)

library(ggplot2)

onefish <- fish_data_cat %>% filter(annnumber == "EDGE")

f <- ggplot(onefish, aes(x = length, y = scalelength)) +
  geom_point(aes(color = lakeid))
f
