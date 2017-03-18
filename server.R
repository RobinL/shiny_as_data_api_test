library(shiny)

# Define server logic for random distribution application
shinyServer(function(input, output,session) {
  
  observe({
    # Grab value from text input
    d <- input$mydata  
    
    # Reverse the text input server side. LOL at how difficult it is to reverse a string in R
    d <- sapply(lapply(strsplit(d, NULL), rev), paste, collapse="")
    
    print(d) # We should see R  print the reversed string to its console
    
    session$sendCustomMessage(type = "myCallbackHandler", list(a=1, b=2)) #myCallbackHanderler is defined in javascript - see the files in www/
  })
  
  
})

