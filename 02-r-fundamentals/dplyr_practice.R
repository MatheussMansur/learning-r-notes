library(dplyr)

students <- data.frame(
  id = 1:5,
  name = c("Ana", "Bruno", "Carla", "Davi", "Eva"),
  city = c("Foz", "Foz", "Cascavel", "Curitiba", "Foz")
)

grades <- data.frame(
  student_id = c(1, 1, 2, 3, 3, 4, 6),
  subject = c("R", "LGPD", "R", "R", "LGPD", "R", "R"),
  grade = c(8, 9, 5, 7, 6, 10, 4)
)

# joins
inner_join(students, grades, by = c("id" = "student_id"))
left_join(students, grades, by = c("id" = "student_id"))  # Eva has no grades -> NA
anti_join(students, grades, by = c("id" = "student_id"))  # students without grades

# select, filter, arrange, mutate
students %>%
  inner_join(grades, by = c("id" = "student_id")) %>%
  filter(subject == "R") %>%
  select(name, grade) %>%
  mutate(status = ifelse(grade >= 6, "passed", "failed")) %>%
  arrange(desc(grade))

# group_by + summarise
students %>%
  inner_join(grades, by = c("id" = "student_id")) %>%
  group_by(city) %>%
  summarise(avg_grade = mean(grade), n = n())
