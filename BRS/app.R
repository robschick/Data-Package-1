#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
)

server <- function(input, output) {
}

shinyApp(
    ui = fluidPage(
        fluidRow(
            column(12,
                   dataTableOutput('table')
            )
        )
    ),
    server = function(input, output) {
        output$table <- renderDataTable(iris)
    }
)

# Run the application 
shinyApp(ui = ui, server = server)
