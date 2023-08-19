library(tidyverse)
# library(dplyr)

people <- read.csv("/home/denis/sandbox/r/people.csv", header=TRUE, sep="\t")

# View(people %>% filter(!is.na(vk)) %>% filter(!is.na(ok)))

View(people 
     %>% filter(mafia %in% 
                c("yy", "y", "?")) 
     %>% select(id, a, place, met, mafia) 
     %>% arrange(desc(mafia)))

