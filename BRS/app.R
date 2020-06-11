library(shiny)

f <- file.choose()
summer <- read.csv(f)

ui <- fluidPage(
    titlePanel("BRS Data for Summer & Spring 2019"),
    sidebarLayout(
        sidebarPanel(
            selectInput("var",
                        label = "Choose Summer or Spring 2019",
                        choices = c("Summer", "Spring"))
        ),
        mainPanel()
    )
)

server <- function(input, output) {
    
    # Reactive value for selected dataset ----
    datasetInput <- reactive({
        switch(input$dataset,
               "Summer" = summer,
               "Spring" = spring)
    })
    
    # Table of selected dataset ----
    output$table <- renderTable({
        datasetInput()
    })
}

shinyApp(ui, server)