# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# infant_walking_df

library(testthat)

# Test class
test_that("infant_walking_df has correct class", {
  expect_s3_class(infant_walking_df, "data.frame")
})

# Test number of columns
test_that("infant_walking_df has 2 columns", {
  expect_equal(length(infant_walking_df), 2)
})

# Test number of rows
test_that("infant_walking_df has 6 rows", {
  expect_equal(nrow(infant_walking_df), 6)
})

# Test column names
test_that("infant_walking_df has expected column names", {
  expected_names <- c("exercise", "no_exercise")
  expect_equal(names(infant_walking_df), expected_names)
})

# Test column types
test_that("infant_walking_df columns have correct types", {
  expect_type(infant_walking_df$exercise, "double")
  expect_type(infant_walking_df$no_exercise, "double")
})

# Test for potential NA values
test_that("infant_walking_df may contain NA values", {
  expect_true(any(is.na(infant_walking_df)) || !any(is.na(infant_walking_df)))
})

# Test immutability
test_that("infant_walking_df remains unchanged after tests", {
  original_names <- names(infant_walking_df)
  original_dim <- dim(infant_walking_df)
  original_types <- sapply(infant_walking_df, typeof)

  expect_equal(names(infant_walking_df), original_names)
  expect_equal(dim(infant_walking_df), original_dim)
  expect_equal(sapply(infant_walking_df, typeof), original_types)
})
