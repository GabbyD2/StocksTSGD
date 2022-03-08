
server <- function(input,output){
output$ts_plot <- renderPlot({
  plot_df <- stocks[stocks$symbol == input$selected_stock,]
  autoplot(plot_df, .vars = close)
})

}