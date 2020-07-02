library(readr)
library(suncalc)
library(shiny)
library(ggplot2)
library(sf)
library(dplyr)
library(plotly)


# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Zc084 Dive Data"),

    
    sidebarLayout(
        sidebarPanel(
            checkboxInput("New Moon" ,
                          "First Quarter", 
                          "Full Moon",
                          "Last Quarter")
                        ),
        mainPanel(
          plotOutput("fig")
          )
    )
    )

       
        
    



# Define server logic required to draw a histogram
server <- function(input, output) {

  mydata <- read.csv("/cloud/project/Zc084_Dive/Zc084_dive_labels.csv")
  
    output$fig <- renderPlot({
      x <- mydata[, c(8)]
    y <- mydata[, c(12)]
    plotdata <- data.frame(x, y)
    
    fig <- plot_ly(plotdata, x = ~x, y = ~y, type = 'scatter', mode = 'lines')
    high <- c(500, 500, 300, 500, 900, 1300, 1500, 1500, 1500, 1500)
    low <- c(100, 100, 0, -100, 100, 600, 1000, 1000, 1000, 1000)
    datatest <- data.frame(x, y, high, low)
    #The default order will be alphabetized unless specified as below:
    fig <- plot_ly(datatest, x = ~x, y = ~high, type = 'scatter', mode = 'lines',
                   line = list(color = 'transparent'),
                   showlegend = FALSE, name = 'High Error') 
    fig <- fig %>% add_trace(y = ~low, type = 'scatter', mode = 'lines',
                             fill = 'tonexty', fillcolor='rgba(0,100,180,0.2)', line = list(color = 'transparent'),
                             showlegend = FALSE, name = 'Low Error') 
    fig <- fig %>% add_trace(x = ~x, y = ~y, type = 'scatter', mode = 'lines',
                             line = list(color='rgb(0,100,180)'),
                             name = 'Average') 
    fig <- fig %>% layout(title = "Dive Data with Error Radius",
                          paper_bgcolor='rgb(255,255,255)', plot_bgcolor='rgb(240,240,240)',
                          xaxis = list(title = "Time",
                                       gridcolor = 'rgb(255,255,255)',
                                       showgrid = TRUE,
                                       showline = FALSE,
                                       showticklabels = TRUE,
                                       tickcolor = 'rgb(127,127,127)',
                                       ticks = 'outside',
                                       zeroline = FALSE),
                          yaxis = list(title = "Depth",
                                       gridcolor = 'rgb(255,255,255)',
                                       showgrid = TRUE,
                                       showline = FALSE,
                                       showticklabels = TRUE,
                                       tickcolor = 'rgb(127,127,127)',
                                       ticks = 'outside',
                                       zeroline = FALSE))
    
    fig


    })
    
    

}

# Run the application 
shinyApp(ui = ui, server = server)


