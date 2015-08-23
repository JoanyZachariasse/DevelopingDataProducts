library(shiny)

BMI <- function(height, weight) {
  value <- round(weight/((height/100)*(height/100)), digits=1)
  print(value)
}

BMIclass <- function(height, weight) {
  value <- round(weight/((height/100)*(height/100)), digits=1)
  if (value < 18.5) print("You are underweight")
  if (value >= 18.5 & value < 25) print("You have a normal weight")
  if (value >= 25 & value < 30) print("You are overweight")
  if (value > 30) print("You have obesity")
}

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({BMI(input$height, input$weight)})
    output$message <- renderPrint({BMIclass(input$height, input$weight)})
  }
)