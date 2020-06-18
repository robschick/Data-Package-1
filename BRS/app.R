library(shiny)

data(Spring2019)
data(Summer2019)

ui <- fluidPage(
    titlePanel("BRS Data for Summer & Spring 2019"),
    sidebarLayout(
        sidebarPanel(
            checkboxGroupInput("var",
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
       # switch(input$dataset,
              # "Summer" = Summer2019,
              # "Spring" = Spring2019)
        
        if (input$distTable == "Summer2019") {
            distTable <- Summer2019
        } else {
            distTable <- Spring2019
        }
        distTable
    })
    
    output$distTable <- renderTable({
        #Summer2019
        dataset <- datasetInput()
    })
}
#server <- function(input, output){
    #datasetInput <- reactive({
        #df[df$Name == input$product, ]
    #}) 
    
    #output$tsplot <- renderPlot({
        #dataset <- datasetInput()
        #plot(as.ts(dataset$Total_Sales, dataset$Date))
   #})
#}

shinyApp(ui, server)