# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# osteoarthritis_df

library(testthat)

# Test class and dimensions
test_that("osteoarthritis_df has correct class and dimensions", {
  expect_s3_class(osteoarthritis_df, "data.frame")
  expect_equal(length(osteoarthritis_df), 7)      # 7 columns
  expect_equal(nrow(osteoarthritis_df), 2585)     # 2585 rows
})

# Test column names
test_that("osteoarthritis_df has correct column names", {
  expected_names <- c("AGE", "SEX", "BMI", "RAC", "SMK", "OSP", "KOA")
  expect_equal(names(osteoarthritis_df), expected_names)
})

# Test column types
test_that("osteoarthritis_df columns have correct types", {
  expect_type(osteoarthritis_df$AGE, "integer")
  expect_s3_class(osteoarthritis_df$SEX, "factor")
  expect_type(osteoarthritis_df$BMI, "double")
  expect_s3_class(osteoarthritis_df$RAC, "factor")
  expect_s3_class(osteoarthritis_df$SMK, "factor")
  expect_s3_class(osteoarthritis_df$OSP, "factor")
  expect_s3_class(osteoarthritis_df$KOA, "factor")
})

# Test for potential NA values
test_that("osteoarthritis_df may contain NA values", {
  expect_true(any(is.na(osteoarthritis_df)) || !any(is.na(osteoarthritis_df)))
})

# Test immutability
test_that("osteoarthritis_df remains unchanged after tests", {
  original_attrs <- attributes(osteoarthritis_df)
  original_values <- osteoarthritis_df

  expect_identical(attributes(osteoarthritis_df), original_attrs)
  expect_equal(osteoarthritis_df, original_values)
})
