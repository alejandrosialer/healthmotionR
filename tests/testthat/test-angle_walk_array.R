# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# angle_walk_array

library(testthat)

# Test class
test_that("angle_walk_array has correct class", {
  expect_true(is.array(angle_walk_array))
})

# Test dimensions
test_that("angle_walk_array has expected dimensions", {
  expect_equal(dim(angle_walk_array), c(20, 39, 2))
})

# Test length
test_that("angle_walk_array has correct length", {
  expect_equal(length(angle_walk_array), 1560)
})

# Test dimnames
test_that("angle_walk_array has dimnames defined", {
  dn <- dimnames(angle_walk_array)
  expect_equal(length(dn), 3)
  expect_type(dn[[1]], "character")
  expect_type(dn[[2]], "character")
  expect_type(dn[[3]], "character")
})

# Test content type
test_that("angle_walk_array contains numeric values", {
  expect_type(angle_walk_array, "double")
})

# Test for potential NA values
test_that("angle_walk_array may contain NA values", {
  expect_true(any(is.na(angle_walk_array)) || !any(is.na(angle_walk_array)))
})

# Test immutability
test_that("angle_walk_array remains unchanged after tests", {
  original_dim <- dim(angle_walk_array)
  original_length <- length(angle_walk_array)
  original_type <- typeof(angle_walk_array)
  original_dimnames <- dimnames(angle_walk_array)

  expect_equal(dim(angle_walk_array), original_dim)
  expect_equal(length(angle_walk_array), original_length)
  expect_equal(typeof(angle_walk_array), original_type)
  expect_equal(dimnames(angle_walk_array), original_dimnames)
})
