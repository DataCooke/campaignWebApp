# Define server logic required 
library
function(input, output) {
  
  output$all <- renderText(paste(input$URL, input$select, input$variable, input$content, sep = ""))
}

# Run the application 

