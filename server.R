library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$eyePlot <- renderPlot({
    
    # Render a barplot
    barplot(HairEyeColor[input$hair,,input$sex], 
            main=paste(input$sex, input$hair, "Hair"),
            ylab="Eye Color",
            xlab="Count")
  })
})