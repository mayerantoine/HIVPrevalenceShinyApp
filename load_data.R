library(shiny)
library(tidyverse)


rm(list=ls())


load_data <- function() {
    rawdata <- read_csv("data/data_hivprevalence.csv")
    hivprev <- select(rawdata,1:2)
    names(hivprev) <- c("Country","Code")
    hivprev <-as_tibble(cbind(hivprev,rawdata[5:30]))
    
    hivprev <-  gather(hivprev,"Year","Prevalence",3:28) 
    hivprev <- filter(hivprev,!is.na(Prevalence))
    
    hivprev
    
}



#f <- hivprev  %>% filter(Code %in% c("BWA"),!is.na(Prevalence)) %>% ggplot(aes(y=Prevalence, x=Year,group =1))
#f+geom_line(aes(colour = Country ))

top_10_prev <- function(f_year=1991,data){
    
    
    hivprev_year <-  data %>% filter(Year == f_year)
    hivprev_year <- hivprev_year[order(hivprev_year$Prevalence,decreasing = T),]
    
    hivprev_year$Country <- factor(hivprev_year$Country, levels = hivprev_year$Country)
    
    head( hivprev_year,10)
    
}

#hiv <- load_data()
#top <- top_10_prev(1993,hiv)



