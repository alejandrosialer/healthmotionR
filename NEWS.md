# healthmotionR 0.3.0

## New Features

- Added a searchable metadata catalog with `list_datasets()`,
  `search_datasets()`, and `dataset_info()`.
- Added consistent access and export helpers with `load_dataset()` and
  `export_dataset()`.
- Added `quick_summary()` for lightweight structural and statistical summaries.
- Added foundational biomechanics utilities: `acceleration_magnitude()`,
  `range_of_motion()`, and `gait_symmetry()`.
- Added language-neutral aliases shared with the companion Python package.

## Fixes

- `view_datasets_healthmotionR()` no longer requires the package to be attached
  with `library()`.
- Corrected the body-temperature plot unit from degrees Celsius to degrees
  Fahrenheit.
- Added a single catalog of dataset provenance, dimensions, and licenses.

---

# healthmotionR 0.2.0

## Breaking Changes

- Added `view_datasets_healthmotionR()` function to list all datasets within the packages.

citation file was updated, ORCID number was added

---

# healthmotionR 0.1.0

## Initial Release

- First release of `healthmotionR` package.
- Curated Collection of Health and Human Motion Datasets.
