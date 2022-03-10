ui <- fluidPage(
selectInput(inputId = 'selected_stock',
              label = 'select stock',
              choices = unique(stocks$symbol)),
selectInput(inputId = 'selected_stock2',
            label = 'select stock',
            choices = unique(stocks$symbol)),
selectInput(inputId = 'selected_metric',
            label = 'select metric',
            choices = c("open", "close", "low", "high")),
dateRangeInput(
  inputId = 'selected_date_range',
  label = "Select date range",
  start = min(stocks$date),
  end = max(stocks$date),
),

plotOutput('ts_plot'),
plotOutput('ts_plot2')

)



