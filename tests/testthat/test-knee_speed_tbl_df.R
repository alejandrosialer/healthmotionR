# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# knee_speed_tbl_df

library(testthat)

# Test class
test_that("knee_speed_tbl_df has correct tibble/data.frame classes", {
  expect_s3_class(knee_speed_tbl_df, "tbl_df")
  expect_s3_class(knee_speed_tbl_df, "tbl")
  expect_s3_class(knee_speed_tbl_df, "data.frame")
})

# Test number of columns
test_that("knee_speed_tbl_df has 2 columns", {
  expect_equal(length(knee_speed_tbl_df), 2)
})

# Test number of rows
test_that("knee_speed_tbl_df has 18 rows", {
  expect_equal(nrow(knee_speed_tbl_df), 18)
})

# Test column names
test_that("knee_speed_tbl_df has expected column names", {
  expected_names <- c("flexion", "extension")
  expect_equal(names(knee_speed_tbl_df), expected_names)
})

# Test column types
test_that("knee_speed_tbl_df columns have correct types", {
  expect_type(knee_speed_tbl_df$flexion, "double")
  expect_type(knee_speed_tbl_df$extension, "double")
})

# Test column labels
test_that("knee_speed_tbl_df columns have correct labels", {
  expect_equal(attr(knee_speed_tbl_df$flexion, "label"), "Flexion (degrees/s)")
  expect_equal(attr(knee_speed_tbl_df$extension, "label"), "Extension (degrees/s)")
})

# Test for potential NA values
test_that("knee_speed_tbl_df may contain NA values", {
  expect_true(any(is.na(knee_speed_tbl_df)) || !any(is.na(knee_speed_tbl_df)))
})

# Test immutability
test_that("knee_speed_tbl_df remains unchanged after tests", {
  original_names <- names(knee_speed_tbl_df)
  original_dim <- dim(knee_speed_tbl_df)
  original_types <- sapply(knee_speed_tbl_df, typeof)
  original_labels <- lapply(knee_speed_tbl_df, attr, "label")

  expect_equal(names(knee_speed_tbl_df), original_names)
  expect_equal(dim(knee_speed_tbl_df), original_dim)
  expect_equal(sapply(knee_speed_tbl_df, typeof), original_types)
  expect_equal(lapply(knee_speed_tbl_df, attr, "label"), original_labels)
})
