#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

source("load_data.R")

hivdata <- load_data()

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
     # calculate top ten
    top <- top_10_prev(input$year,hivdata)
    t <- paste("Top 10 Countries with highest HIV Prevalence",input$year,sep = "  ")
    
    ## generate plot
    g <- top %>% ggplot(aes(x= reorder(Country,Prevalence),y=Prevalence))
    g+geom_col(width = 0.5) +
        coord_flip()+
        labs(title=t, 
             subtitle="Prevalence of HIV, total (% of population ages 15-49)", 
             caption="source: https://data.worldbank.org , UNAIDS Estimates",
             x="Country") + 
        theme(axis.text.x = element_text(angle=65, vjust=0.3))
    
  })
  
})
