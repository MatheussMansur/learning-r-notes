library(dplyr)
library(ggplot2)

trips <- read.csv2("04-practice/data/travel_sample.csv", encoding = "UTF-8")

# dates come as dd/mm/yyyy, R needs to be told the format
trips$start_date <- as.Date(trips$start_date, format = "%d/%m/%Y")
trips$month <- format(trips$start_date, "%Y-%m")
trips$total <- trips$daily_allowance + trips$tickets

str(trips)
summary(trips$total)

# 1. spent per agency
by_agency <- trips %>%
  group_by(agency) %>%
  summarise(total = sum(total)) %>%
  arrange(desc(total))
by_agency

# 2. spent per city
by_city <- trips %>%
  group_by(destination) %>%
  summarise(total = sum(total), trips = n()) %>%
  arrange(desc(total))
by_city

# 3. trips per month
by_month <- trips %>% count(month)
by_month

ggplot(by_agency, aes(x = reorder(agency, total), y = total)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Travel spending per agency", x = NULL, y = "R$")
ggsave("04-practice/spending_per_agency.png", width = 7, height = 4)

ggplot(by_month, aes(x = month, y = n, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = "Trips per month", x = NULL, y = "trips")
ggsave("04-practice/trips_per_month.png", width = 7, height = 4)
