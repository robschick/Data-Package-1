

#df$Date <- as.Date(as.character(df$Date, format = "%Y-%m-%d"))

library(shiny)


loc <- read.csv("All_Locations.csv")


ui <- fluidPage(
    selectInput("ID", "Choose a Tag:",
                choices = c("ZcTag084", "ZcTag082", "ZcTag083", "ZcTag085", "ZcTag087", "ZcTag088", "ZcTag086", "GmTag224", "ZcTag092", "ZcTag090", "ZcTag093", "GmTag223", "GmTag227", "ZcTag095", "GmTag225", "ZcTag089", "ZcTag094", "ZcTag097", "ZcTag096", "GmTag226", "ZcTag091")),
    dateRangeInput("ID", "Choose a Date Range:"),
    checkboxGroupInput("var",
                       label = "Choose the Controlled Exposure Experiment(s):",
                       choices = c("CEE1", "CEE2", "CEE3", "CEE4")),
    submitButton("Generate Visualization", icon("refresh")),
    plotOutput(outputId = "tsplot")
)
server <- function(input, output){
    datasetInput <- reactive({
        loc[loc$DeployID == input$ID, ]
    }) 
    # output$distTable <- renderTable({
    #     loc
    # })
    output$tsplot <- renderPlot({
        dataset <- datasetInput()
        plot(as.ts(dataset$Latitude, dataset$Longitude))
    })
}
shinyApp(ui, server)