
server <- function(input,output){
  output$invalid_combination <- renderUI({
    min_date <- input$selected_date_range[1]
    max_date <- input$selected_date_range[2]
    
    plot_df <- stocks[stocks$symbol == input$selected_stock & stocks$state == input$selected_state,
                       c('date',input$selected_metric)]
    
    plot_df <- plot_df[plot_df$date >= min_date,]
    plot_df <- plot_df[plot_df$date <= max_date,]
    
    if (nrow(plot_df) == 0) h1("Invalid combination", style = "color:red;")
    
  })
  
output$ts_plot <- renderPlot({
  min_date <- input$selected_date_range[1]
  max_date <- input$selected_date_range[2]
  
  plot_df <- stocks[stocks$symbol == input$selected_stock & stocks$state == input$selected_state,  
                    c('date',input$selected_metric)]
  
  plot_df <- plot_df[plot_df$date >= min_date,]
  plot_df <- plot_df[plot_df$date <= max_date,]
  
  if (nrow(plot_df) > 0)autoplot(plot_df)})

output$ts_plot2 <- renderPlot({
  min_date <- input$selected_date_range[1]
  max_date <- input$selected_date_range[2]
  
  plot_df2 <- stocks[stocks$symbol == input$selected_stock2 & stocks$state == input$selected_state,  
                    c('date',input$selected_metric)]
  
  plot_df2 <- plot_df2[plot_df2$date >= min_date,]
  plot_df2 <- plot_df2[plot_df2$date <= max_date,]
  
  if (nrow(plot_df2) > 0)autoplot(plot_df2)})


}

  