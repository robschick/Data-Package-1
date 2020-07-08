library(shiny)
library(ggplot2)  # for the diamonds dataset

loc <- read.csv("All_Locations.csv")
ser <- read.csv("All_Series.csv")

ui <- fluidPage(
  title = "Examples of DataTables",
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "loc"',
        checkboxGroupInput("show_vars", "Columns in diamonds to show:",
                           names(loc), selected = names(loc))
      ),
      conditionalPanel(
        'input.dataset === "ser"',
        helpText("Click the column header to sort a column.")
      ),
      #   conditionalPanel(
      #     'input.dataset === "loc"',
      #     helpText("Display 5 records by default.")
      #   )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel("loc", DT::dataTableOutput("mytable1")),
        tabPanel("ser", DT::dataTableOutput("mytable2"))#,
        #tabPanel("iris", DT::dataTableOutput("mytable3"))
      )
    )
  )
)

server <- function(input, output) {
  
  # choose columns to display
  loc2 = loc[sample(nrow(loc), 1000), ]
  output$mytable1 <- DT::renderDataTable({
    DT::datatable(loc2[, input$show_vars, drop = FALSE])
  })
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 <- DT::renderDataTable({
    DT::datatable(ser, options = list(orderClasses = TRUE))
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  # output$mytable2 <- DT::renderDataTable({
  #   DT::datatable(ser, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  # })
  
}

shinyApp(ui, server)