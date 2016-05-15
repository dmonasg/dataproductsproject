#Shiny UI code for Developing Data Products course project
#The code allows a user to enter a car's speed via a slider
#The resulting output is the average stopping distance for
#that speed based on the "cars" data set

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Car Stopping Distance"),

  # Sidebar with a slider input for car speed
  # min/max are set to avoid invalid inputs
  # i.e., while the actual minimum in the cars
  # data set is 7, there are not values for 8 or 9
  sidebarLayout(
    sidebarPanel(
      sliderInput("speed",
                  "Speed:",
                  min=10, max=20, value=15, step=1)
    ),

    # Display the input speed and resulting average stopping distance
    mainPanel(
      h3(paste("Speed: "),textOutput("speed")),
      h3(paste("Average Stopping Distance: "),textOutput("distance"))
    )
  )
))
