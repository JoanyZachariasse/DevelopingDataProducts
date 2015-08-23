library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("BMI Calculator"),
  
  sidebarPanel(
    h5("Enter your weight and height in the fields below"),
    numericInput('height', 'Height in centimeters', 0, min = 0, max = 1000, step=1),
    numericInput('weight', 'Weight in kilograms', 0, min = 0, max = 1000, step=1),
    submitButton('Submit')
  ),
  mainPanel(
    tags$style(type="text/css",
               ".shiny-output-error { visibility: hidden; }",
               ".shiny-output-error:before { visibility: hidden; }"
    ),
    h3('This is your BMI'),
    verbatimTextOutput("prediction"),
    verbatimTextOutput("message")
  )
))