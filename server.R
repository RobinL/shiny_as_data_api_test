library(shiny)
library(tibble)

# Define server logic for random distribution application
shinyServer(function(input, output,session) {
  
  observe({
    # Grab value from text input
    d <- input$mydata  
    
    # Reverse the text input server side. LOL at how difficult it is to reverse a string in R
    d <- sapply(lapply(strsplit(d, NULL), rev), paste, collapse="")
    print(d)
    session$sendCustomMessage(type = "myCallbackHandler", d)
  })
  
  
})

