library(shiny)

# Define UI for slider on diabetis
shinyUI(fluidPage(
  
  #  Application title
  titlePanel("Diabetes mg/dl input"),
  
  # Sidebar helps select value of Hg index
  # options
  sidebarLayout(
    sidebarPanel(
      # INDEX integer interval
      sliderInput("glucosein", "mg/dl measure:",
                  min=0, max=500, value=180),
      submitButton('Submit')     
    ),
    
    # Show a table with value selected
    mainPanel(
      #tableOutput("values"),
      h3('Results of prediction'),
      h4('You entered'), verbatimTextOutput("glucosein"),
      h4('Prediction'),verbatimTextOutput("diabetesRisk")
    )
  )
))
#  shinyUI( pageWithSidebar(
# Application title headerPanel("Diabetes prediction"),
#sidebarPanel(
#  numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5), 
# submitButton('Submit')
#), 
# mainPanel(
#) )
#)
#h3('Results of prediction'),
#h4('You entered'), verbatimTextOutput("inputValue"), 
#h4('Which resulted in a prediction of '), verbatimTextOutput("prediction")
#) )
#)
