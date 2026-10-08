grades <- c(7.5, 4.0, 9.0, 5.5, 6.0)

# for
for (g in grades) {
  if (g >= 6) {
    print(paste(g, "passed"))
  } else {
    print(paste(g, "failed"))
  }
}

# while
total <- 0
i <- 1
while (total < 20) {
  total <- total + grades[i]
  i <- i + 1
}
print(paste("needed", i - 1, "grades to pass 20 points"))

# my own function
grade_status <- function(grade, min_grade = 6) {
  if (grade >= min_grade) "passed" else "failed"
}
grade_status(7)
grade_status(5, min_grade = 4)

# apply family
sapply(grades, grade_status)
lapply(list(a = 1:3, b = 4:6), sum)

m <- matrix(1:6, nrow = 2)
apply(m, 1, sum)  # rows
apply(m, 2, sum)  # columns

classes <- c("A", "B", "A", "B", "A")
tapply(grades, classes, mean)
