library(shiny)
require(rCharts)
library(knitr)
options(RCHART_LIB = 'polycharts')
shinyUI(pageWithSidebar(
  headerPanel("Employee engagement survey for 2 teams"),
  sidebarPanel(
 
    radioButtons("ar_id", "Select survey area",
                 c( 'My daily working life', 
                    'Job satisfaction and engagement', 
                    'Leadership', 
                    'Career and Development', 
                    'Communication', 
                    'My company as an employer', 
                    'Reward and Recognition', 
                    'Values Index' )),
    h3("Some help & info"),
    helpText("You see results of 20XX annual survey in company ZZZ. ",
             tags$p("Select survey area with radio button."),
             tags$p("For each question employees have to answer about question importance and their satisfaction."),
             tags$p("Point dots on chart with your mouse to see values.") )
  ),
  mainPanel(
    # verbatimTextOutput("arid"),
    showOutput('newHist', 'polycharts'),
    tableOutput('to')
  )
))