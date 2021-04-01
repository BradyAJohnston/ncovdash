library(shiny)

ui <- source("ui.R")
server <- source("server.R")

# Run the application
shinyApp(ui = ui, server = server)
