library(shiny)
library(leaflet)
library(sp)
library(dplyr)

r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()

# Define UI 
ui <- fluidPage(
    
    # Application title
    titlePanel("Preliminary Shiny App Locations Data"),
    
    
    leafletOutput("mymap"),
    p(),
    
)

# Server Logic
server <- function(input, output, session) {
    
    
    
    data <- read.csv("/cloud/project/All_Locations.csv")
    data$long <- as.numeric(data$Longitude)
    data$lat <- as.numeric(data$Latitude)
    
    data <- data %>%
        distinct(DeployID)
    
    
    data.SP <- SpatialPointsDataFrame(data[, c(8,9)], data[, -c(8,9)])
    
    output$mymap <- renderLeaflet({
        leaflet() %>%
            addTiles() %>%
            addMarkers(data = data.SP, lng = ~long, lat = ~lat)
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)

