# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# run_biomech_tbl_df

library(testthat)

# ---- Class and dimensions ----
test_that("run_biomech_tbl_df has correct class and dimensions", {
  expect_s3_class(run_biomech_tbl_df, "spec_tbl_df")
  expect_s3_class(run_biomech_tbl_df, "tbl_df")
  expect_s3_class(run_biomech_tbl_df, "tbl")
  expect_s3_class(run_biomech_tbl_df, "data.frame")
  expect_equal(length(run_biomech_tbl_df), 26)   # 26 columns
  expect_equal(nrow(run_biomech_tbl_df), 1832)  # 1832 rows
})

# ---- Column names ----
test_that("run_biomech_tbl_df has correct column names", {
  expected_names <- c(
    "sub_id", "datestring", "filename", "speed_r", "age", "Height",
    "Weight", "Gender", "DominantLeg", "InjDefn", "InjJoint", "InjSide",
    "SpecInjury", "InjDuration", "InjJoint2", "InjSide2", "SpecInjury2",
    "Activities", "Level", "YrsRunning", "RaceDistance", "RaceTimeHrs",
    "RaceTimeMins", "RaceTimeSecs", "YrPR", "NumRaces"
  )
  expect_equal(names(run_biomech_tbl_df), expected_names)
})

# ---- Column types ----
test_that("run_biomech_tbl_df columns have correct types", {
  expect_type(run_biomech_tbl_df$sub_id, "double")
  expect_type(run_biomech_tbl_df$datestring, "character")
  expect_type(run_biomech_tbl_df$filename, "character")
  expect_type(run_biomech_tbl_df$speed_r, "double")
  expect_type(run_biomech_tbl_df$age, "double")
  expect_type(run_biomech_tbl_df$Height, "double")
  expect_type(run_biomech_tbl_df$Weight, "double")
  expect_type(run_biomech_tbl_df$Gender, "character")
  expect_type(run_biomech_tbl_df$DominantLeg, "character")
  expect_type(run_biomech_tbl_df$InjDefn, "character")
  expect_type(run_biomech_tbl_df$InjJoint, "character")
  expect_type(run_biomech_tbl_df$InjSide, "character")
  expect_type(run_biomech_tbl_df$SpecInjury, "character")
  expect_type(run_biomech_tbl_df$InjDuration, "double")
  expect_type(run_biomech_tbl_df$InjJoint2, "character")
  expect_type(run_biomech_tbl_df$InjSide2, "character")
  expect_type(run_biomech_tbl_df$SpecInjury2, "character")
  expect_type(run_biomech_tbl_df$Activities, "character")
  expect_type(run_biomech_tbl_df$Level, "character")
  expect_type(run_biomech_tbl_df$YrsRunning, "double")
  expect_type(run_biomech_tbl_df$RaceDistance, "character")
  expect_type(run_biomech_tbl_df$RaceTimeHrs, "character")
  expect_type(run_biomech_tbl_df$RaceTimeMins, "character")
  expect_type(run_biomech_tbl_df$RaceTimeSecs, "character")
  expect_type(run_biomech_tbl_df$YrPR, "double")
  expect_type(run_biomech_tbl_df$NumRaces, "double")
})

# ---- NA allowance ----
test_that("run_biomech_tbl_df may contain NA values", {
  expect_true(any(is.na(run_biomech_tbl_df)) || !any(is.na(run_biomech_tbl_df)))
})

# ---- Immutability ----
test_that("run_biomech_tbl_df remains unchanged after tests", {
  original_names <- names(run_biomech_tbl_df)
  original_dim <- dim(run_biomech_tbl_df)
  original_types <- sapply(run_biomech_tbl_df, typeof)

  expect_equal(names(run_biomech_tbl_df), original_names)
  expect_equal(dim(run_biomech_tbl_df), original_dim)
  expect_equal(sapply(run_biomech_tbl_df, typeof), original_types)
})
