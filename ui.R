library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rasgos cuantitativos"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("genes", label = "genes", min=1, max=15, value =2, step = 1), 
      sliderInput("ale", label = "alelos", min=2, max=5, value =2, step = 1),
      width = 3),
    
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))