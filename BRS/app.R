#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny, DT)

shinyServer(function(input, output) {
    
    #This function is repsonsible for loading in the selected file
    filedata <- reactive({
        infile <- input$datafile
        if (is.null(infile)) {
            # User has not uploaded a file yet
            return(NULL)
        }
        read.csv("Summer2019.csv")
    })
})
