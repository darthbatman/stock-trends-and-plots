stock_5_year_data <- read.csv("BOOM.csv")
stock_5_year_data_relevant <- stock_5_year_data[, c(1, 5)]

stock_5_year_data_relevant_training <- stock_5_year_data_relevant[1:1000, ]
stock_5_year_data_relevant_test <- stock_5_year_data_relevant[-(1:1000), ]

suppressWarnings(suppressMessages(library(kknn)))
model <- train.kknn(Close ~ ., data = stock_5_year_data_relevant_training, kmax = 9)
prediction <- predict(model, stock_5_year_data_relevant_test[, -2, drop = FALSE])

prediction
stock_5_year_data_relevant_test

png("knn-plot-prediction.png")
plot(stock_5_year_data_relevant_test[, 1], prediction)
lines(stock_5_year_data_relevant_test[, 1], prediction, type="l")
dev.off()

png("knn-plot-actual.png")
plot(stock_5_year_data_relevant_test)
lines(stock_5_year_data_relevant_test, type="l")
dev.off()