library(shiny)


fluidPage(
  tags$img(src = "https://media.giphy.com/media/26u44qAByezPD0Y5a/giphy.gif", width = "76px", height = "50px"),
  
  mainPanel(width = 12, h1("Google Analytics Campaign URL Builder"),
    p("Use this tool to ensure you have the correct URL for tracking your campaign in Google Analytics!"),
    p("Simply insert your campaign URL into the text box below.  Select the appropriate fields using the flyouts.  Copy the URL output at the bottom and use that as your link!!")

  ),
  
 
 
  
  # Copy the line below to make a select box 
 fluidRow( 
   
  column(2, textInput("URL", label = h3("Insert URL"), placeholder = "Insert URL Here...")),
   
 
  column(2, selectizeInput(
    'source', label = h3("Source"), choices = list("Newsletter" = "?utm_source=newsletter","Welcome Letter" = "?utm_source=welcomeletter", "SAP" = "?utm_source=sap", "Promotion" = "?utm_source=promotion", "Facebook" = "?utm_source=facebook", "twitter" = "?utm_source=twitter", "None" = 300),
    options = list(
      placeholder = 'Select Option',
      onInitialize = I('function() { this.setValue(""); }')
    )
  )),
  
  column(2, selectizeInput(
    'medium', label = h3("Select Medium"), choices = list("Email" = "&utm_medium=email", "Social" = "&utm_medium=social", "Referral" = "&utm_medium=referral", "Organic" = "&utm_medium=organic", "None" = 300),
    options = list(
      placeholder = 'Select Option',
      onInitialize = I('function() { this.setValue(""); }')
    )
  )),
  
 
  
  column(2, textInput("campaign", label = h3("Insert Campaign (lowercase)"), 
              value = "", placeholder = "Insert Campaign Here")),
  
  column(2, selectizeInput(
    "market", label = h3("Select Market"), choices = list("US" = "&utm_content=US", "Hong Kong" = "&utm_content=HK", "Macau" = "&utm_content=MO", "Taiwan" = "&utm_content=TW", "None" = 300),
    options = list(
      value = "", placeholder = 'Select Market',
      onInitialize = I('function() { this.setValue(""); }')
    )
  )),
  
  column(2, textInput("content", label = h3("Optional Sub-Campaign (lowercase)"), 
                      value = "", placeholder = "Insert Sub-Campaign Here"))
 ),
  


  hr(),
 mainPanel(
   h2("Here's your Campaign Tracking Link!!!")
 ),
  all <- fluidRow(column(12, verbatimTextOutput("all"))),
  
tags$img(src = "http://charitydblog.wpengine.com/wp-content/uploads/2015/05/data-cat_2.png", width = "150px", height = "150px")
  
)



