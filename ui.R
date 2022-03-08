ui <- fluidPage(
selectInput(inputId = 'selected_stock',
              label = 'select stock',
              choices = unique(stocks$symbol)),
plotOutput('ts_plot')

)



