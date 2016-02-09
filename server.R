library(shiny)
library("rCharts")
library(knitr)
S_1 <- readRDS(file="S1.Rda")
S_Q <- readRDS(file="SQ.Rda")

shinyServer(
  function(input, output) {
    output$arid = renderPrint({input$ar_id})
    output$newHist <- renderChart2({
      S_2 <- subset(S_1, S_1$area == input$ar_id)
      S_2$question <- as.factor(S_2$question)
      
      p1 <- rPlot(Sat ~ Imp | Team, data = S_2, color = 'question', type = 'point', size = list(const = 5))
      
      p1$guides(
        color = list(
          levels = unique(  S_2$question )),
        x = list(min = 0, max = 10, title = "Importance" ),
        y = list(min = 0, max = 10, title = "Satisfaction" ))
      p1$set( title = input$ar_id )
      return(p1)    })
    
    output$to <- function() {
      qq <- S_Q[S_Q$area == input$ar_id, 2:6]
      my.c.names <- c("Question", "Team 2 Sat.", "Team 2 Imp.", "Team 1 Sat.", "Team 1 Imp.")
        paste(knitr::kable(
          qq, format = 'html', output = FALSE, row.names = FALSE, col.names = my.c.names,
          table.attr="class='data table table-bordered table-condensed'"),
          sep = '\n') }
    
  }
)