# base R plots, saved to a png so it works with Rscript too
png("02-r-fundamentals/plots.png", width = 900, height = 400)
par(mfrow = c(1, 2))

hist(mtcars$mpg, main = "Miles per gallon", xlab = "mpg", col = "lightblue")
plot(mtcars$wt, mtcars$mpg, main = "Weight x mpg", xlab = "weight", ylab = "mpg", pch = 19)

dev.off()
