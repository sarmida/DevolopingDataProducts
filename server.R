library(shiny)

# Define server logic for slider of index selection
shinyServer(function(input, output) {
  
  # Reactive expression to compose a data frame containing 
  # the values
  sliderValues <- reactive({
    
    # Compose data frame
    #data.frame(
    #  Name = c("Index"),
    #  Value = as.character(c(input$glucose)),   
    #  stringsAsFactors=FALSE)
    glucose <- input$glucosein
  }) 
  # CAlculae the risk
  diabetesRisk <- function(glucose) glucose / 180
  # Show the values using an HTML table
    output$values <- renderPrint({input$glucosein
    diabetesRisk <- function(glucose) glucose / 200
    sliderValues()
    #},
    #output$inputValue <- renderPrint({input$glucose
  })
})
#  diabetesRisk <- function(glucose) glucose / 200
#shinyServer( function(input, output) {
#  output$inputValue <- renderPrint({input$glucose})
#  output$prediction <- renderPrint({diabetesRisk(input$glucose)}) }
#)
