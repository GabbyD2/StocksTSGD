
server <- function(input,output){
output$ts_plot <- renderPlot({
  min_date <- input$selected_date_range[1]
  max_date <- input$selected_date_range[2]
  
  plot_df <- stocks[stocks$symbol == input$selected_stock,  
                    c('date',input$selected_metric)]
  
  plot_df <- plot_df[plot_df$date >= min_date,]
  plot_df <- plot_df[plot_df$date <= max_date,]
  
  
  autoplot(plot_df)
        
})}