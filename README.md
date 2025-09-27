# healthmotionR

The **healthmotionR** package provides a comprehensive collection of datasets related to **health, biomechanics, and human motion**. It was designed to support researchers, analysts, and students who are interested in exploring clinical, physiological, and kinematic data.  

## Installation

You can install the `healthmotionR` package from CRAN with the following R function:

```R

install.packages("healthmotionR")

```

## Load the Package

```R

library(healthmotionR)

```

## Dataset Suffixes

Each dataset in the `healthmotionR` package uses a `suffix` to denote the type of R object:

- `_df`: data frame

- `_tbl_df`: tibble

- `_list`: list

- `_array`: array

- `_char`: character


## Example Datasets

Below are selected example datasets included in the `healthmotionR` package:

- `body_metrics_df`: Data frame containing measurements of body temperature and heart rate for 130 healthy individuals.

- `run_biomech_tbl_df`:  Running Injury Clinic Kinematic Dataset.


## Example Code:

```R

# Load the package

library(healthmotionR)

# Load dataset

data(run_biomech_tbl_df)

# Preview the dataset

head(run_biomech_tbl_df)

# Open in Viewer

View(run_biomech_tbl_df)

```
