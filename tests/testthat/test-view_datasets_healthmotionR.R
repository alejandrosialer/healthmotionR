# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# view_datasets_healthmotionR

library(testthat)
library(healthmotionR)

test_that("view_datasets_healthmotionR works when package is loaded", {
  result <- view_datasets_healthmotionR()
  expect_type(result, "character")
  expect_true(length(result) > 0)
})

test_that("view_datasets_healthmotionR prints correct message", {
  output <- capture_messages(view_datasets_healthmotionR())
  expect_match(
    output[1],
    "Datasets available in the 'healthmotionR' package:",
    fixed = TRUE
  )
})

test_that("view_datasets_healthmotionR returns expected datasets", {
  datasets <- view_datasets_healthmotionR()
  expected_datasets <- c(
    "AtrialFibrillation_list",
    "BasicMotions_list",
    "FingerMovements_char",
    "HandMovementDir_char",
    "Heartbeat_char",
    "KinData_df",
    "StandWalkJump_list",
    "Stepping_df",
    "acceldata2_list",
    "acceldata_list",
    "accelimp_list",
    "admiral_vs_tbl_df",
    "angle_walk_array",
    "body_metrics_df",
    "infant_walking_df",
    "knee_speed_tbl_df",
    "meniscal_list",
    "motion_sense_list",
    "motionpaths_list",
    "osteoarthritis_df",
    "rheuma_df",
    "run_biomech_tbl_df",
    "surgerydat_df",
    "vs_peds_tbl_df",
    "walk_biomech_tbl_df",
    "walking_df",
    "z_labels_monitoring_df"


  )
  # Check if all expected datasets are present
  missing_datasets <- setdiff(expected_datasets, datasets)
  expect_true(
    length(missing_datasets) == 0,
    info = paste("Missing datasets:", paste(missing_datasets, collapse = ", "))
  )
})
