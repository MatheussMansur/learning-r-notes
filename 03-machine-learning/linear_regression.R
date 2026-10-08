# students table from the module plus a few more rows I made up
students <- data.frame(
  hours = c(4, 2, 6, 3, 5, 1, 7, 4),
  absences = c(2, 5, 0, 4, 1, 8, 0, 3),
  grade = c(7.0, 5.0, 9.5, 6.0, 8.0, 3.5, 9.8, 6.5)
)

model <- lm(grade ~ hours, data = students)
coef(model)  # intercept = B (bias), hours = W (weight)

# grade for someone who studies 5 hours
predict(model, data.frame(hours = 5))

# using absences too
model2 <- lm(grade ~ hours + absences, data = students)
summary(model2)$r.squared
predict(model2, data.frame(hours = 5, absences = 2))
