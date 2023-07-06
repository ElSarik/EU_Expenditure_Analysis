source('global.R')
source('ui/ui.R')
source('server/server.R')

# Run the application 
shinyApp(ui = ui, server = server)