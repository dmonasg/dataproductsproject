# Shiny Server code for Developing Data Products course project
# Code takes speed as input from UI and calculates average
# stopping distance from cars data set

library(shiny)
library(datasets)

stopdata <- cars

shinyServer(function(input, output) {
  
  speed <- reactive({input$speed})
  
  avgdistance <- reactive({
    mean(cars$dist[cars$speed==input$speed])
  })
  
  output$speed <- renderText({speed()})
  
  output$distance <- renderText({
    avgdistance()
  })


})
