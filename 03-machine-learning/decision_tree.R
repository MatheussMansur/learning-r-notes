library(rpart)

# the job offer example from the module, with made up past decisions
offers <- data.frame(
  salary_50k = c("yes", "yes", "no", "yes", "yes", "no", "yes", "yes"),
  commute_over_1h = c("no", "yes", "no", "no", "no", "no", "yes", "no"),
  free_coffee = c("yes", "yes", "yes", "no", "yes", "no", "no", "yes"),
  accepted = c("yes", "no", "no", "no", "yes", "no", "no", "yes"),
  stringsAsFactors = TRUE
)

tree <- rpart(accepted ~ ., data = offers, method = "class",
              control = rpart.control(minsplit = 2, cp = 0))
print(tree)

new_offer <- data.frame(salary_50k = "yes", commute_over_1h = "no", free_coffee = "yes")
predict(tree, new_offer, type = "class")

# a real one with iris
iris_tree <- rpart(Species ~ ., data = iris, method = "class")
print(iris_tree)
