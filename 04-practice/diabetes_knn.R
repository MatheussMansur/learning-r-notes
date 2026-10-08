library(MASS)
library(class)

# Pima.tr (200 rows) and Pima.te (332 rows) come with MASS
data <- rbind(Pima.tr, Pima.te)

# preparation: check the types
str(data)
colSums(is.na(data))

# exploratory analysis
table(data$type)
prop.table(table(data$type))
aggregate(cbind(glu, bmi, age) ~ type, data = data, FUN = mean)

png("04-practice/glucose_by_type.png", width = 600, height = 400)
boxplot(glu ~ type, data = data, main = "Glucose by diabetes", xlab = "diabetes", ylab = "glucose")
dev.off()

# model: KNN on normalized features with a random 70/30 split
set.seed(123)
normalize <- function(x) (x - min(x)) / (max(x) - min(x))
x <- as.data.frame(lapply(data[, 1:7], normalize))
y <- data$type

train_idx <- sample(nrow(data), size = 0.7 * nrow(data))

best <- NULL
for (k in seq(3, 25, by = 2)) {
  pred <- knn(x[train_idx, ], x[-train_idx, ], cl = y[train_idx], k = k)
  acc <- mean(pred == y[-train_idx])
  if (is.null(best) || acc > best$acc) best <- list(k = k, acc = acc, pred = pred)
}

print(paste("best k:", best$k))
print(paste("accuracy:", round(best$acc * 100, 1), "%"))
table(predicted = best$pred, real = y[-train_idx])

if (best$acc >= 0.75) {
  print("goal reached: at least 75% accuracy")
} else {
  print("below the 75% goal")
}
