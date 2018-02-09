library(tidyverse)

fish_data <- read.csv("Gaeta_etal_CLC_data.csv", stringsAsFactors = FALSE)

fish_data %>% mutate(length_cat = ifelse(length > 300, "big", "small")) -> fish_data_cat


