# vectors: everything has the same type
ages <- c(19, 23, 31, 27)
names <- c("Ana", "Bruno", "Carla", "Davi")
mean(ages)
ages[2]
ages[ages > 25]

# mixing types turns everything into character
mixed <- c(1, "a", TRUE)
class(mixed)

# factor
shirt <- factor(c("M", "P", "G", "M", "M"), levels = c("P", "M", "G"), ordered = TRUE)
table(shirt)
shirt[1] < shirt[3]

# list
person <- list(name = "Ana", age = 19, courses = c("ADS", "LGPD"))
person$courses
str(person)

# matrix
m <- matrix(1:6, nrow = 2)
m
t(m)
m %*% t(m)

# data frame
students <- data.frame(name = names, age = ages, city = c("Foz", "Foz", "Cascavel", "Curitiba"))
students
students[students$city == "Foz", ]
nrow(students)
summary(students$age)
