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
selectInput(inputId = 'selected_state',
            label = 'select state/country',
            choices = unique(stocks$state)),
dateRangeInput(
  inputId = 'selected_date_range',
  label = "Select date range",
  start = min(stocks$date),
  end = max(stocks$date),
),
submitButton(text = "Submit Search"),
uiOutput("invalid_combination")
plotOutput('ts_plot'),
plotOutput('ts_plot2'),


)

