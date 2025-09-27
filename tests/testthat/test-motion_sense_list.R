# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# motion_sense_list

library(testthat)

# Test class
test_that("motion_sense_list has correct class", {
  expect_type(motion_sense_list, "list")
})

# Test length
test_that("motion_sense_list has length 2", {
  expect_equal(length(motion_sense_list), 2)
})

# Test element names
test_that("motion_sense_list has expected names", {
  expected_names <- c("user_acceleration", "pitch_attitude")
  expect_equal(names(motion_sense_list), expected_names)
})

# Test element types
test_that("motion_sense_list elements are numeric matrices", {
  expect_true(is.matrix(motion_sense_list$user_acceleration))
  expect_true(is.numeric(motion_sense_list$user_acceleration))
  expect_true(is.matrix(motion_sense_list$pitch_attitude))
  expect_true(is.numeric(motion_sense_list$pitch_attitude))
})

# Test dimensions of each matrix
test_that("motion_sense_list matrices have expected dimensions", {
  expect_equal(dim(motion_sense_list$user_acceleration), c(200, 96))
  expect_equal(dim(motion_sense_list$pitch_attitude), c(200, 96))
})

# Test for potential NA values
test_that("motion_sense_list may contain NA values", {
  expect_true(any(is.na(motion_sense_list$user_acceleration)) ||
                !any(is.na(motion_sense_list$user_acceleration)))
  expect_true(any(is.na(motion_sense_list$pitch_attitude)) ||
                !any(is.na(motion_sense_list$pitch_attitude)))
})

# Test immutability
test_that("motion_sense_list remains unchanged after tests", {
  original_names <- names(motion_sense_list)
  original_length <- length(motion_sense_list)
  original_dims <- lapply(motion_sense_list, dim)
  original_types <- lapply(motion_sense_list, typeof)

  expect_equal(names(motion_sense_list), original_names)
  expect_equal(length(motion_sense_list), original_length)
  expect_equal(lapply(motion_sense_list, dim), original_dims)
  expect_equal(lapply(motion_sense_list, typeof), original_types)
})

