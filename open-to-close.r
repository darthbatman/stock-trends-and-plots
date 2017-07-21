stock_data <- read.csv("BOOM.csv")
open_prices <- stock_data[, 2]
close_prices <- stock_data[, 5]

png("open-vs-close.png")
plot(open_prices, close_prices, col="blue")
dev.off()