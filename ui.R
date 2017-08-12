#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Top 10 Countries with highest HIV Prevalence"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("year",
                   "Choose Year :",
                   min = 1991,
                   max = 2015,
                   value = 1)
    
    ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       includeHTML("documentation.Rhtml")
    )

  )
))
