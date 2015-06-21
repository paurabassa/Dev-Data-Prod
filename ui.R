library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Eye color by sex and hair color"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("sex", "Sex:", 
                    choices=names(HairEyeColor[1,1,])),
        selectInput("hair", "Hair:", 
                    choices=names(HairEyeColor[,1,1])),
        hr(),
        helpText("The Hair x Eye table comes from a survey of students at the University of Delaware reported by Snee (1974).")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("eyePlot")  
      )
      
    )
  )
)