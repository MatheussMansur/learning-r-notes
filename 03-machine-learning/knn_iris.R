library(class)

set.seed(42)

# normalize so every feature has the same scale
normalize <- function(x) (x - min(x)) / (max(x) - min(x))
features <- as.data.frame(lapply(iris[, 1:4], normalize))

# random 70/30 split
train_idx <- sample(nrow(iris), size = 0.7 * nrow(iris))
train_x <- features[train_idx, ]
test_x <- features[-train_idx, ]
train_y <- iris$Species[train_idx]
test_y <- iris$Species[-train_idx]

pred <- knn(train_x, test_x, cl = train_y, k = 3)

table(predicted = pred, real = test_y)
accuracy <- mean(pred == test_y)
print(paste("accuracy with k = 3:", round(accuracy * 100, 1), "%"))

# trying other values of k
for (k in c(1, 3, 5, 7, 9)) {
  p <- knn(train_x, test_x, cl = train_y, k = k)
  print(paste("k =", k, "->", round(mean(p == test_y) * 100, 1), "%"))
}
