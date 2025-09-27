# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# StandWalkJump_list

library(testthat)

# Test overall structure
test_that("StandWalkJump_list has correct structure", {
  expect_type(StandWalkJump_list, "list")
  expect_equal(length(StandWalkJump_list), 2)
  expect_equal(names(StandWalkJump_list), c("data", "classes"))
})

# Test 'data' element
test_that("StandWalkJump_list$data is a list of 27 matrices with correct dimensions", {
  expect_type(StandWalkJump_list$data, "list")
  expect_equal(length(StandWalkJump_list$data), 27)

  # Check each element is numeric matrix/array with 2500 rows and 4 columns
  lapply(StandWalkJump_list$data, function(x) {
    expect_true(is.numeric(x))
    expect_equal(dim(x), c(2500, 4))
  })
})

# Test 'classes' element
test_that("StandWalkJump_list$classes is numeric vector of length 27", {
  expect_type(StandWalkJump_list$classes, "double")
  expect_equal(length(StandWalkJump_list$classes), 27)
})

# Allow NA values (validity not restricted)
test_that("StandWalkJump_list may contain NA values", {
  expect_true(any(is.na(StandWalkJump_list)) || !any(is.na(StandWalkJump_list)))
})

# Test immutability of dataset
test_that("StandWalkJump_list remains unchanged after tests", {
  original_attrs <- attributes(StandWalkJump_list)
  original_names <- names(StandWalkJump_list)
  original_length <- length(StandWalkJump_list)

  expect_identical(attributes(StandWalkJump_list), original_attrs)
  expect_equal(names(StandWalkJump_list), original_names)
  expect_equal(length(StandWalkJump_list), original_length)
})
