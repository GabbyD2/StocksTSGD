ui <- fluidPage(
selectInput(inputId = 'selected_stock',
              label = 'select stock',
              choices = unique(stocks$symbol)),
dateRangeInput(
  inputId = 'selected_date_range',
  label = "Select date range",
  start = min(stocks$date),
  end = max(stocks$date),
),

plotOutput('ts_plot')

)



