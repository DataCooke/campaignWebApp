# Define server logic required 
library
function(input, output) {
  
  output$all <- renderText(paste(input$URL, input$source, input$select, if (input$variable > 0) {"&utm_campaign="}, input$variable, input$market, input$content, sep = ""))
}

# Run the application 

