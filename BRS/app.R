#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny, DT)

read.csv("Summer2019.csv")
Summer2019 <- read.csv("Summer2019.csv")

ui <- basicPage(
    h2("Summer 2019"),
    DT::dataTableOutput("mytable")
)

server <- function(input, output) {
    output$mytable = DT::renderDataTable({
        Summer2019
    })
}

shinyApp(ui, server)
