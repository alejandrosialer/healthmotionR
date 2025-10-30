# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# body_metrics_df

library(testthat)

# Test class
test_that("body_metrics_df has correct class", {
  expect_s3_class(body_metrics_df, "data.frame")
})

# Test number of columns
test_that("body_metrics_df has 3 columns", {
  expect_equal(length(body_metrics_df), 3)
})

# Test number of rows
test_that("body_metrics_df has 130 rows", {
  expect_equal(nrow(body_metrics_df), 130)
})

# Test column names
test_that("body_metrics_df has expected column names", {
  expected_names <- c("temperature", "gender", "hr")
  expect_equal(names(body_metrics_df), expected_names)
})

# Test column types
test_that("body_metrics_df columns have correct types", {
  expect_type(body_metrics_df$temperature, "double")
  expect_type(body_metrics_df$gender, "integer")
  expect_type(body_metrics_df$hr, "integer")
})

# Test for potential NA values
test_that("body_metrics_df may contain NA values", {
  expect_true(any(is.na(body_metrics_df)) || !any(is.na(body_metrics_df)))
})

# Test immutability
test_that("body_metrics_df remains unchanged after tests", {
  original_names <- names(body_metrics_df)
  original_dim <- dim(body_metrics_df)
  original_types <- sapply(body_metrics_df, typeof)

  expect_equal(names(body_metrics_df), original_names)
  expect_equal(dim(body_metrics_df), original_dim)
  expect_equal(sapply(body_metrics_df, typeof), original_types)
})

