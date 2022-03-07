library(fpp3)

stocks <- read.csv('nyse_stocks.csv')
head(stocks)

stocks$date <- as.Date(stocks$date)
stocks <- tsibble(stocks, index = date, key = symbol)


#shows plotting one stock in class record 3/3