library(shiny)
library(plotly)

# Define UI for application that draws a plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Finance Factor Influenced"),
  
  column(4, wellPanel(selectInput("select", label = h2("Select Financial Factor"), 
              choices = list("Currency" = 1, "Income" = 2)))), 
  
  # Shows a plot and html doc supporting the application
  column(8, mainPanel(width = 12, 
    plotlyOutput("LinePlot"), 
    htmlOutput("html", container = div)
      )
    )
  )
)