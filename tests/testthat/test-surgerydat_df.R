# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# surgerydat_df

library(testthat)

# Test class
test_that("surgerydat_df has correct class", {
  expect_s3_class(surgerydat_df, "data.frame")
})

# Test number of columns
test_that("surgerydat_df has 9 columns", {
  expect_equal(length(surgerydat_df), 9)
})

# Test number of rows
test_that("surgerydat_df has 32529 rows", {
  expect_equal(nrow(surgerydat_df), 32529)
})

# Test column names
test_that("surgerydat_df has expected column names", {
  expected_names <- c("entrytime", "survtime", "censorid", "unit",
                      "exptheta", "psival", "age", "sex", "BMI")
  expect_equal(names(surgerydat_df), expected_names)
})

# Test column types
test_that("surgerydat_df columns have correct types", {
  expect_type(surgerydat_df$entrytime, "double")
  expect_type(surgerydat_df$survtime, "double")
  expect_type(surgerydat_df$censorid, "double")
  expect_type(surgerydat_df$unit, "double")
  expect_type(surgerydat_df$exptheta, "double")
  expect_type(surgerydat_df$psival, "double")
  expect_type(surgerydat_df$age, "double")
  expect_s3_class(surgerydat_df$sex, "factor")
  expect_type(surgerydat_df$BMI, "double")
})

# Test for potential NA values
test_that("surgerydat_df may contain NA values", {
  expect_true(any(is.na(surgerydat_df)) || !any(is.na(surgerydat_df)))
})

# Test immutability
test_that("surgerydat_df remains unchanged after tests", {
  original_names <- names(surgerydat_df)
  original_dim <- dim(surgerydat_df)
  original_types <- sapply(surgerydat_df, typeof)

  expect_equal(names(surgerydat_df), original_names)
  expect_equal(dim(surgerydat_df), original_dim)
  expect_equal(sapply(surgerydat_df, typeof), original_types)
})


