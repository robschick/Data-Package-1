df <- read.table(
    text = "    Name                   Total_Sales               Date
  1. 'Coke 0.5 L'              23                      2014-01-02  
  2. 'Sprite 0.5 L'            18                      2014-01-02  
  3. 'CornFlakes 1.kg'         21                      2014-01-02  
  4. 'Coke 0.5 L'              25                      2014-01-03   
  5. 'BurgersX6 1.kg'           8                      2014-01-03  
  6. 'CornFlakes 1.kg'         17                      2014-01-03"
)
df$Date <- as.Date(as.character(df$Date, format = "%Y-%m-%d"))


library("shiny")
ui <- fluidPage(
    selectInput("product", "Choose a product:", 
                choices = levels(df$Name)),
    plotOutput(outputId = "tsplot")
)
server <- function(input, output){
    datasetInput <- reactive({
        df[df$Name == input$product, ]
    }) 
    
    output$tsplot <- renderPlot({
        dataset <- datasetInput()
        plot(as.ts(dataset$Total_Sales, dataset$Date))
    })
}
shinyApp(ui = ui, server = server)