

#df$Date <- as.Date(as.character(df$Date, format = "%Y-%m-%d"))

library(shiny)
library(ggplot2)
library(ggspatial)
library(DT)


loc <- read.csv("All_Locations.csv")
ser <- read.csv("All_Series.csv")
range <- read.csv("All_SeriesRange.csv")
cee <- read.csv("ATLANTIC-BRS_CEE Metadata.csv")
fake <- read.csv("fakedataCEE.csv")

ui <- fluidPage(
    
    sidebarLayout(
        sidebarPanel(
            h2("Create a BRS Plot"),
            selectInput("CEE",
                        label = "Choose the Controlled Exposure Experiment(s):",
                        choices = c("CEE1", "CEE2", "CEE3", "CEE4")),
            #selectInput("ID", "DeployID", selected = "ZcTag084",
            #            choices = unique(loc$DeployID)),
            uiOutput("select_var2"),
            # uiOutput("select_tag"),
            dateRangeInput("date", "Choose a Date Range:"),
            submitButton("Generate Visualization", icon("refresh")),
            #plotOutput(outputId = "tsplot"),
            
        ),
        mainPanel(
            tabsetPanel(
                id = 'dataset',
                
                tabPanel("Plot", plotOutput(outputId = "tsplot")),
                
                tabPanel("Locations", DT::dataTableOutput("mytable1")),
                tabPanel("Series", DT::dataTableOutput("mytable2")),
                tabPanel("SeriesRange", DT::dataTableOutput("mytable3")),
                tabPanel("CEE Metadata", DT::dataTableOutput("mytable4"))
            ),
            #plotOutput(outputId = "tsplot")
        )
    )
)
server <- function(input, output){
    
    datasetInput <- reactive({
        loc[loc$DeployID == input$ID, ]
    }) 
    
    output$tsplot <- renderPlot({
        dataset <- datasetInput()
        # plot(as.ts(dataset$Latitude))
        ggplot(dataset, aes(Longitude, Latitude))+
            geom_spatial_point()+
            ggtitle(paste0('Raw Locations from: ', input$ID))
    })
    
    output$select_var2 <- renderUI({
        choice_var2 <- reactive({
            fake %>% 
                filter(CEE == input$CEE) %>% 
                pull(DeployID) %>% 
                as.character() #coerced to character to have text and not the number of the factor
        })
        
        selectizeInput("ID", "DeployID", choices = c("select" = "", choice_var2()))
        #selectizeInput('var2', 'Select variable 2', choices = c("select" = "", choice_var2()))
    })
    
    #update loc tab based on tag selected
    # updateloc <- reactive({
    #     loc %>%
    #         filter(DeployID == input$ID)
    # })
    
    output$mytable1 = DT::renderDataTable({
        datasetInput()
    })
    
    
    updateser <- reactive({ 
        ser %>% 
            dplyr::filter(DeployID == input$ID)
    })
    output$mytable2 = DT::renderDataTable({
        updateser()
    })
    

    updaterange <- reactive({ 
        range %>% 
            dplyr::filter(DeployID == input$ID)
    })
    output$mytable3 = DT::renderDataTable({
        updaterange()
    })
    
    
    output$mytable4 = DT::renderDataTable({
        cee
    })
}
shinyApp(ui, server)