stock_data <- read.csv("BOOM.csv")

num_days_apart <- 1000

previous_day_prices <- stock_data[1:(dim(stock_data)[1] - num_days_apart), 2]
latter_day_prices <- stock_data[(1 + num_days_apart):dim(stock_data)[1], 2]

png("day-to-day.png")
plot(previous_day_prices, latter_day_prices, col="blue")
abline(a=0,b=1, col="red")
dev.off()