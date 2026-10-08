library(class)

set.seed(7)

normalize <- function(x) (x - min(x)) / (max(x) - min(x))
x <- as.data.frame(lapply(iris[, 1:4], normalize))
y <- iris$Species

# 5 partitions like the A-E picture in the module
folds <- sample(rep(1:5, length.out = nrow(iris)))

cv_accuracy <- function(k) {
  acc <- c()
  for (f in 1:5) {
    test <- folds == f
    p <- knn(x[!test, ], x[test, ], cl = y[!test], k = k)
    acc <- c(acc, mean(p == y[test]))
  }
  mean(acc)
}

# simple hyperparameter tuning: pick the k with the best average accuracy
ks <- c(1, 3, 5, 7, 9, 11, 15)
results <- sapply(ks, cv_accuracy)
data.frame(k = ks, accuracy = round(results, 3))
print(paste("best k:", ks[which.max(results)]))
