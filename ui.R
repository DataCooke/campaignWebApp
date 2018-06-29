library(shiny)


fluidPage(
  
  mainPanel(width = 12, h1("Google Analytics Campaign URL Builder"),
    p("Use this tool to ensure you have the correct URL for tracking your campaign in Google Analytics!"),
    p("Simply insert your campaign URL into the text box below.  Select the appropriate fields using the flyouts.  Copy the URL output at the bottom and use that as your link!!")

  ),
  
  #tags$div(
   # "Some text followed by a break", 
   # tags$br(),
    #"Some text following a break"
  #),
  
  #titlePanel("Google Analytics Campaign URL Builder"),
 # column(4,
        # includeHTML("include.html")
       #  ),
  
 
  
  # Copy the line below to make a select box 
 fluidRow( 
   
  column(3, textInput("URL", label = h3("Insert URL"), value = "Insert Link Here...")),
   
 column(3, selectInput("select", label = h3("Select Medium"), 
              choices = list("Email" = "?utm_source=dynamic&utm_medium=email", "Social" = "?utm_source=dynamic&utm_medium=social", "Referral" = "?utm_source=dynamic&utm_medium=referral", "Organic" = "?utm_source=dynamic&utm_medium=organic", "None" = "?utm_source=dynamic"), 
              selected = 1)),
  
  
  column(3, selectInput("variable", label = h3("Select Campaign"), 
              choices = list("Test1" = "&utm_campaign=test1", "Test2" = "&utm_campaign=test2", "Test3" = "&utm_campaign=test3", "Test4" = "&utm_campaign=test4", "None" = ""), 
              selected = 0, selectize = FALSE)),
  
  column(3, selectInput("content", label = h3("Select Content"), 
              choices = list("Banner Ad" = "&utm_content=bannerAd", "Sidebar Ad" = "&utm_content=sidebarAd", "Textlink" = "&utm_content=textlink", "Logolink" = "&utm_content=logolink", "None" = ""), 
              selected = 0, selectize = FALSE))
),

  hr(),
 mainPanel(
   h2("Here's your Campaign Tracking Link!!!")
 ),
  all <- fluidRow(column(12, verbatimTextOutput("all"))),
  
tags$img(src = "http://charitydblog.wpengine.com/wp-content/uploads/2015/05/data-cat_2.png", width = "300px", height = "300px")
  
)



