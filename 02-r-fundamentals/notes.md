# Module 2 - R fundamentals

## Setup
- install R from cran.r-project.org, then RStudio (free IDE for R)
- RStudio has 4 panes:
  - Source (top left): where you write code
  - Console (bottom left): shows the output
  - Environment (top right): objects in memory
  - bottom right: Files, Plots, Packages, Help (`help()` opens the docs here)

## Basics
- comments with `#`
- `install.packages("x")` once, then `library(x)` to load it
- R uses the dot as a space in names (`install.packages`), other languages use `_` or camelCase

## Data structures
- **vector**: ordered elements, all the same type
- **factor**: categorical values (nominal or ordinal)
- **list**: special vector that accepts different types
- **data frame**: rows and columns like a spreadsheet, made of lists or vectors
- **matrix**: tabular like a data frame but only one type

## Loops, flow, functions
- `for()` goes through each element of a sequence
- `while()` repeats while a condition holds
- `if` / `else` for flow control
- writing your own functions saves time
- apply family: `apply`, `lapply` (returns a list), `sapply` (simplifies to a vector), `tapply` (by group)

## Data manipulation
- joins put two data sets together
- dplyr is the most used package: `select`, `filter`, `arrange`, `mutate`, `group_by`, `summarise`, `slice`
- tidyr for reshaping: `gather`, `separate`, `unite`
