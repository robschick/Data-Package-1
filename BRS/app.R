library(shiny)

data(Spring2019)
data(summer)


ui <- fluidPage(
    titlePanel("BRS Data for Summer & Spring 2019"),
    sidebarLayout(
        sidebarPanel(
            selectInput("var",
                        label = "Choose Summer or Spring 2019",
                        choices = c("Summer", "Spring"))
        ),
        mainPanel(
            tableOutput("distTable")
        )
    )
)

server <- function(input, output) {
    
    datasetInput <- reactive({
        switch(input$dataset,
               "Summer" = summer,
               "Spring" = Spring2019)
    })
    
    output$distTable <- renderTable(Summer2019)
}

shinyApp(ui, server)