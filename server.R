# Define server logic required 
library


function(input, output) {
  
  all <- reactive(paste(req(input$URL), if (input$source == 300) {""} else input$source, if (input$medium == 300) {""} else (input$medum), if (input$campaign > 0) {paste("&utm_campaign=", input$campaign, sep = "")}, if (input$market == 300) {""} else input$market, input$content, sep = ""))
  output$all <- renderText(paste(all(), sep = ""))
  #output$all <- renderText(paste(req(input$URL), input$source, input$select, if (input$variable > 0) {"&utm_campaign="}, input$variable, input$market, sep = ""))
  
}