# Module 4 - Practice

Two cases. The course shows the R code in videos; the scripts here are my own take on them.

## Case 1: travel expenses (diárias e passagens)
Goal: understand travel spending in the public sector to cut costs.
Data: Portal da Transparência (CGU), "Viagens a Serviço".

Questions:
- how much was spent per agency?
- how much per city?
- how many trips per month?

Steps: problem -> get the data -> transform (dates! formats change between countries) -> explore ->
visualize. Results can be tables/charts or an **R Markdown** report (documents, reports, presentations
and dashboards made programmatically).

`travel_expenses.R` uses a small sample CSV I wrote with the same idea as the portal export
(agency, destination, start date, values). To use the real data, download the yearly zip from the
portal and point the script to the "Viagem" csv (it's `;` separated, latin1, decimal comma).

## Case 2: predicting diabetes
Problem: "identify patients with high probability of a diabetes diagnosis, with at least 75% accuracy".
Steps: problem -> get data -> prepare (check types) -> exploratory analysis -> build the model ->
show the results (a report).

The course uses a public diabetes dataset from its library. `diabetes_knn.R` uses the Pima data that
comes with the MASS package (same kind of data: glucose, blood pressure, bmi, age... and diabetes yes/no).
