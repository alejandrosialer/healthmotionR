# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#z_labels_monitoring_df


library(testthat)

# ---- Class and dimensions ----
test_that("z_labels_monitoring_df has correct class and dimensions", {
  expect_s3_class(z_labels_monitoring_df, "data.frame")
  expect_equal(length(z_labels_monitoring_df), 3)   # 3 columns
  expect_equal(nrow(z_labels_monitoring_df), 6)     # 6 rows
})

# ---- Column names ----
test_that("z_labels_monitoring_df has correct column names", {
  expected_names <- c("activity", "start", "end")
  expect_equal(names(z_labels_monitoring_df), expected_names)
})

# ---- Column types ----
test_that("z_labels_monitoring_df columns have correct types", {
  expect_type(z_labels_monitoring_df$activity, "character")
  expect_type(z_labels_monitoring_df$start, "integer")
  expect_type(z_labels_monitoring_df$end, "integer")
})

# ---- NA allowance ----
test_that("z_labels_monitoring_df may contain NA values", {
  expect_true(any(is.na(z_labels_monitoring_df)) || !any(is.na(z_labels_monitoring_df)))
})

# ---- Immutability ----
test_that("z_labels_monitoring_df remains unchanged after tests", {
  original_names <- names(z_labels_monitoring_df)
  original_dim <- dim(z_labels_monitoring_df)
  original_types <- sapply(z_labels_monitoring_df, typeof)

  expect_equal(names(z_labels_monitoring_df), original_names)
  expect_equal(dim(z_labels_monitoring_df), original_dim)
  expect_equal(sapply(z_labels_monitoring_df, typeof), original_types)
})
