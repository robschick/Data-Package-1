loc <- read.csv("All_Locations.csv", stringsAsFactors = FALSE)

#df$Date <- as.Date(as.character(df$Date, format = "%Y-%m-%d"))

library(shiny)

#loc <- data(All_Locations)

ui <- fluidPage(
    selectInput("ID", "Choose a whale:", 
                choices = levels(loc$DeployID)),
    plotOutput(outputId = "tsplot")
)
server <- function(input, output){
    datasetInput <- reactive({
        loc[loc$DeployID == input$ID, ]
    }) 
    
    output$tsplot <- renderPlot({
        dataset <- datasetInput()
        plot(as.ts(dataset$Latitude, dataset$Longitude))
    })
}
shinyApp(ui, server)