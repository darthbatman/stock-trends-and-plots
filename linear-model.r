stock_5_year_data <- read.csv("BOOM.csv")
stock_5_year_data_relevant <- stock_5_year_data[, c(1, 5)]

fit <- lm(formula = Close ~ Date, data = stock_5_year_data_relevant)

png("linear-model.png")
plot(stock_5_year_data_relevant)
lines(stock_5_year_data_relevant[, 1], fitted(fit), col="red")
dev.off()