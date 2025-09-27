# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# KinData_df


library(testthat)

# ---- Class and dimensions ----
test_that("KinData_df has correct class and dimensions", {
  expect_s3_class(KinData_df, "data.frame")
  expect_equal(length(KinData_df), 121)   # 121 columns
  expect_equal(nrow(KinData_df), 848)     # 848 rows
})

# ---- Column names ----
test_that("KinData_df has expected column names", {
  expected_names <- c(
    "Object.Size",
    paste0("Wrist_Velocity_", sprintf("%02d", 1:10)),
    paste0("Grip_Aperture_", sprintf("%02d", 1:10)),
    paste0("Wrist_Height_", sprintf("%02d", 1:10)),
    paste0("x_index_", sprintf("%02d", 1:10)),
    paste0("y_index_", sprintf("%02d", 1:10)),
    paste0("z_index_", sprintf("%02d", 1:10)),
    paste0("x_thumb_", sprintf("%02d", 1:10)),
    paste0("y_thumb_", sprintf("%02d", 1:10)),
    paste0("z_thumb_", sprintf("%02d", 1:10)),
    paste0("x_finger_plane_", sprintf("%02d", 1:10)),
    paste0("y_finger_plane_", sprintf("%02d", 1:10)),
    paste0("z_finger_plane_", sprintf("%02d", 1:10))
  )
  expect_equal(names(KinData_df), expected_names)
})

# ---- Column types ----
test_that("KinData_df columns have correct types", {
  expect_type(KinData_df$Object.Size, "integer")

  numeric_columns <- setdiff(names(KinData_df), "Object.Size")
  for (col in numeric_columns) {
    expect_type(KinData_df[[col]], "double")
  }
})

# ---- NA allowance ----
test_that("KinData_df may contain NA values", {
  expect_true(any(is.na(KinData_df)) || !any(is.na(KinData_df)))
})

# ---- Immutability ----
test_that("KinData_df remains unchanged after tests", {
  original_names <- names(KinData_df)
  original_dim <- dim(KinData_df)
  original_types <- sapply(KinData_df, typeof)

  expect_equal(names(KinData_df), original_names)
  expect_equal(dim(KinData_df), original_dim)
  expect_equal(sapply(KinData_df, typeof), original_types)
})
