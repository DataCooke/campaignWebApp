library(shiny)


fluidPage(
  
  textInput("URL", label = h3("Insert URL"), value = "Insert Link Here..."),
  
  # Copy the line below to make a select box 
  selectInput("select", label = h3("Select Medium"), 
              choices = list("Email" = "?utm_source=dynamic&utm_medium=email", "Social" = "?utm_source=dynamic&utm_medium=social", "Referral" = "?utm_source=dynamic&utm_medium=referral", "Organic" = "?utm_source=dynamic&utm_medium=organic", "None" = "?utm_source=dynamic"), 
              selected = 1),
  
  
  selectInput("variable", label = h3("Select Campaign"), 
              choices = list("Test1" = "&utm_campaign=test1", "Test2" = "&utm_campaign=test2", "Test3" = "&utm_campaign=test3", "Test4" = "&utm_campaign=test4", "None" = ""), 
              selected = 0, selectize = FALSE),
  
  selectInput("content", label = h3("Select Content"), 
              choices = list("Banner Ad" = "&utm_content=bannerAd", "Sidebar Ad" = "&utm_content=sidebarAd", "Textlink" = "&utm_content=textlink", "Logolink" = "&utm_content=logolink", "None" = ""), 
              selected = 0, selectize = FALSE),
  
  hr(),
  all <- fluidRow(column(12, verbatimTextOutput("all")))
)

