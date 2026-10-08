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
train_x <- x[train_idx, ]
train_y <- y[train_idx]
test_x <- x[-train_idx, ]
test_y <- y[-train_idx]

# choose k with 5-fold cross-validation on the training data only,
# so the test set is only used once at the end
folds <- sample(rep(1:5, length.out = nrow(train_x)))
cv_accuracy <- function(k) {
  acc <- c()
  for (f in 1:5) {
    val <- folds == f
    p <- knn(train_x[!val, ], train_x[val, ], cl = train_y[!val], k = k)
    acc <- c(acc, mean(p == train_y[val]))
  }
  mean(acc)
}

ks <- seq(3, 25, by = 2)
cv_results <- sapply(ks, cv_accuracy)
best_k <- ks[which.max(cv_results)]
print(paste("best k on cross-validation:", best_k))

# final evaluation on the test set
pred <- knn(train_x, test_x, cl = train_y, k = best_k)
accuracy <- mean(pred == test_y)
print(paste("test accuracy:", round(accuracy * 100, 1), "%"))
table(predicted = pred, real = test_y)

if (accuracy >= 0.75) {
  print("goal reached: at least 75% accuracy")
} else {
  print("below the 75% goal")
}
