# Module 1 - Intro to data analysis

Focus of the course: data analysis in the public sector.

## Public sector
- data is used for anomaly detection, monitoring indicators and improving processes
- Ministério da Economia publishes panels (purchases, costs, staff, works, budget, prices, transfers, travel...)
- Portal da Transparência (CGU) has panels and lets you download the data
- examples abroad: health (flu outbreaks), Durham police (crime patterns), US Homeland Security
  (internet traffic threats), Indonesia (flood areas from sensors + complaints)
- 5th Seminário Internacional sobre Análise de Dados na Adm. Pública, Brasília 2019
  (TCU, CGU, Enap, Rede de Inovação no Setor Público). Cases: Brumadinho victims, fraud links
  (TCE-SP/CADE), payroll checks (TCU), collusion in bids (CGU), suspicious TaxiGov rides
- open data: anyone can access, use, modify and share for any purpose (Open Knowledge definition).
  LAI says secrecy and personal info are the exceptions

## Big data
- 4 Vs: **volume, variety, velocity, veracity**
- IDC: 175 zettabytes by 2025
- 80-90% of the world's data is unstructured
- too big for a traditional database -> parallel/distributed architectures -> **Hadoop**
  (Apache, open source, stores/processes structured and unstructured data, cheap and flexible)

| | structured | unstructured |
|---|---|---|
| what | tables, rows and columns | no pattern |
| structure | rigid, planned (schema) | flexible or none |
| example | database | text, images, video, audio, social media |

## Data science
"the art of extracting knowledge from data to make better decisions, predict and understand the past".
Turns data into information. Math + statistics + computer science.

Conway's Venn diagram: computing + statistics = machine learning, statistics + domain = traditional
research, computing + domain = "danger zone", all three = data science.

## Machine learning
- subset of AI, computers learning without being explicitly programmed
- uses: fraud/anomaly detection, spam, customer segmentation, self-driving cars/drones, search engines,
  IT security, logistics
- 3 types:
  - **supervised**: learns from features + target, then predicts (will a patient get a disease?)
  - **unsupervised**: groups similar data, no target (anomalies, customer groups)
  - **reinforcement**: learns from interacting with the environment, only sees consequences (self-driving cars)

## Data science process (5 steps)
1. problem definition (descriptive, diagnostic or predictive analysis?)
2. data preparation (get, clean, normalize, transform - ex: sex as M/F, 0/1, masculino/feminino)
3. exploratory analysis (types, distributions, missing values, redundant vars, outliers, correlation)
4. predictive model (not every project needs it)
5. results visualization (dashboard, report, spreadsheet, csv)

## R
- language for statistical analysis and charts; multi-paradigm (functional), dynamic, weakly typed
- 15k+ packages on CRAN
- created in 1993 by Ross Ihaka and Robert Gentleman (University of Auckland, NZ), based on S.
  Name comes from Ross and Robert. Free license since 1995
