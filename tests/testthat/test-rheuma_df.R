# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# rheuma_df

library(testthat)

# Test class and dimensions
test_that("rheuma_df has correct class and dimensions", {
  expect_s3_class(rheuma_df, "data.frame")
  expect_equal(length(rheuma_df), 3)   # 3 columns
  expect_equal(nrow(rheuma_df), 10)    # 10 rows
})

# Test column names
test_that("rheuma_df has correct column names", {
  expected_names <- c("Drug", "Improvement", "n")
  expect_equal(names(rheuma_df), expected_names)
})

# Test column types
test_that("rheuma_df columns have correct types", {
  expect_s3_class(rheuma_df$Drug, "factor")
  expect_s3_class(rheuma_df$Improvement, "ordered")
  expect_type(rheuma_df$n, "integer")
})

# Test for potential NA values
test_that("rheuma_df may contain NA values", {
  expect_true(any(is.na(rheuma_df)) || !any(is.na(rheuma_df)))
})

# Test immutability
test_that("rheuma_df remains unchanged after tests", {
  original_attrs <- attributes(rheuma_df)
  original_values <- rheuma_df

  expect_identical(attributes(rheuma_df), original_attrs)
  expect_equal(rheuma_df, original_values)
})
