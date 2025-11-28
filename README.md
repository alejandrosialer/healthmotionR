# healthmotionR
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![CRAN status](https://www.r-pkg.org/badges/version/healthmotionR)](https://CRAN.R-project.org/package=healthmotionR)
[![CRAN downloads (monthly)](https://cranlogs.r-pkg.org/badges/healthmotionR?color=brightgreen)](https://cran.r-project.org/package=healthmotionR)
[![CRAN downloads (total)](https://cranlogs.r-pkg.org/badges/grand-total/healthmotionR?color=blue)](https://cran.r-project.org/package=healthmotionR)
[![DOI (CRAN)](https://img.shields.io/badge/DOI-10.32614%2FCRAN.package.healthmotionR-blue.svg)](https://doi.org/10.32614/CRAN.package.healthmotionR)

---

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
