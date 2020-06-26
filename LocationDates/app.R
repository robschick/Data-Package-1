

#df$Date <- as.Date(as.character(df$Date, format = "%Y-%m-%d"))

library(shiny)
library(DT)


loc <- read.csv("All_Locations.csv")
ser <- read.csv("All_Series.csv")
range <- read.csv("All_SeriesRange.csv")
cee <- read.csv("ATLANTIC-BRS_CEE Metadata.csv")

ui <- fluidPage(
    
    sidebarLayout(
        sidebarPanel(
            # conditionalPanel(
            #     condition = "input.plotType == 'ts'",
            #     h2("Create a BRS Plot"),
            #     
            #     selectInput("ID", "Choose a Tag:",
            #                 choices = c("ZcTag084", "ZcTag082", "ZcTag083", "ZcTag085", "ZcTag087", "ZcTag088", "ZcTag086", "GmTag224", "ZcTag092", "ZcTag090", "ZcTag093", "GmTag223", "GmTag227", "ZcTag095", "GmTag225", "ZcTag089", "ZcTag094", "ZcTag097", "ZcTag096", "GmTag226", "ZcTag091")),
            #     dateRangeInput("date", "Choose a Date Range:"),
            #     checkboxGroupInput("varcee",
            #                        label = "Choose the Controlled Exposure Experiment(s):",
            #                        choices = c("CEE1", "CEE2", "CEE3", "CEE4")),
            #     submitButton("Generate Visualization", icon("refresh")),
            #     #plotOutput(outputId = "tsplot"),
            # ),

            h2("Create a BRS Plot"),

            uiOutput("select_tag"),
            #selectizeInput('ID', 'Choose a Tag:', choices = c("choose" = "", levels(loc$DeployID))), 
            #selectInput("ID", "Choose a Tag:",
                        #choices = c("ZcTag084", "ZcTag082", "ZcTag083", "ZcTag085", "ZcTag087", "ZcTag088", "ZcTag086", "GmTag224", "ZcTag092", "ZcTag090", "ZcTag093", "GmTag223", "GmTag227", "ZcTag095", "GmTag225", "ZcTag089", "ZcTag094", "ZcTag097", "ZcTag096", "GmTag226", "ZcTag091")),
            dateRangeInput("date", "Choose a Date Range:"),
            checkboxGroupInput("varcee",
                               label = "Choose the Controlled Exposure Experiment(s):",
                               choices = c("CEE1", "CEE2", "CEE3", "CEE4")),
            submitButton("Generate Visualization", icon("refresh")),
            #plotOutput(outputId = "tsplot"),
            
            # conditionalPanel(
            #     'input.dataset === "loc"',
            #     checkboxGroupInput("show_vars", "Columns in diamonds to show:",
            #                        names(loc), selected = names(loc))
            # ),
            # conditionalPanel(
            #     'input.dataset === "ser"',
            #     helpText("Click the column header to sort a column.")
            # ),
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
        plot(as.ts(dataset$Latitude))
    })
    
    #update loc tab based on tg selected
    updateloc <- reactive({ 
         loc %>% 
            filter(DeployID == input$ID)
    })
    
    # output$table <- renderTable({ 
    #     
    #     tab()
    #     
    # })
    
    # 1st Input rendered by the server <---
    output$select_tag <- renderUI({
        #selectizeInput('ID', 'Choose a Tag:', choices = c("choose" = "", levels(loc$DeployID)))
        selectInput("ID", "Choose a Tag:",
                    choices = c("ZcTag084", "ZcTag082", "ZcTag083", "ZcTag085", "ZcTag087", "ZcTag088", "ZcTag086", "GmTag224", "ZcTag092", "ZcTag090", "ZcTag093", "GmTag223", "GmTag227", "ZcTag095", "GmTag225", "ZcTag089", "ZcTag094", "ZcTag097", "ZcTag096", "GmTag226", "ZcTag091"))
    })
    
    output$mytable1 = DT::renderDataTable({
        updateloc()
    })
    
    # # choose columns to display
    # loc2 = loc[sample(nrow(loc), 1000), ]
    # output$mytable1 <- DT::renderDataTable({
    #     DT::datatable(loc2[, input$show_vars, drop = FALSE])
    # })
    
    updateser <- reactive({ 
        ser %>% 
            filter(DeployID == input$ID)
    })
    output$mytable2 = DT::renderDataTable({
        updateser()
    })
    
    # # sorted columns are colored now because CSS are attached to them
    # output$mytable2 <- DT::renderDataTable({
    #     DT::datatable(ser, options = list(orderClasses = TRUE))
    # })
    
    output$mytable3 = DT::renderDataTable({
        range
    })
    output$mytable4 = DT::renderDataTable({
        cee
    })
}
shinyApp(ui, server)