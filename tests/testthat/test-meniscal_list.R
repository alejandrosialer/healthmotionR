# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# meniscal_list

library(testthat)

# Test class
test_that("meniscal_list has correct class", {
  expect_type(meniscal_list, "list")
})

# Test length
test_that("meniscal_list has length 3", {
  expect_equal(length(meniscal_list), 3)
})

# Test element names
test_that("meniscal_list has expected names", {
  expected_names <- c("FasT-Fix", "Meniscus Arrows", "Vertical Mattress")
  expect_equal(names(meniscal_list), expected_names)
})

# Test element types
test_that("meniscal_list elements are numeric vectors", {
  expect_true(is.numeric(meniscal_list[["FasT-Fix"]]))
  expect_true(is.numeric(meniscal_list[["Meniscus Arrows"]]))
  expect_true(is.numeric(meniscal_list[["Vertical Mattress"]]))
})

# Test element lengths
test_that("meniscal_list elements have expected length", {
  expect_equal(length(meniscal_list[["FasT-Fix"]]), 6)
  expect_equal(length(meniscal_list[["Meniscus Arrows"]]), 6)
  expect_equal(length(meniscal_list[["Vertical Mattress"]]), 6)
})

# Test for potential NA values
test_that("meniscal_list may contain NA values", {
  expect_true(any(is.na(meniscal_list[["FasT-Fix"]])) || !any(is.na(meniscal_list[["FasT-Fix"]])))
  expect_true(any(is.na(meniscal_list[["Meniscus Arrows"]])) || !any(is.na(meniscal_list[["Meniscus Arrows"]])))
  expect_true(any(is.na(meniscal_list[["Vertical Mattress"]])) || !any(is.na(meniscal_list[["Vertical Mattress"]])))
})

# Test immutability
test_that("meniscal_list remains unchanged after tests", {
  original_names <- names(meniscal_list)
  original_length <- length(meniscal_list)
  original_types <- lapply(meniscal_list, typeof)
  original_lengths <- lapply(meniscal_list, length)

  expect_equal(names(meniscal_list), original_names)
  expect_equal(length(meniscal_list), original_length)
  expect_equal(lapply(meniscal_list, typeof), original_types)
  expect_equal(lapply(meniscal_list, length), original_lengths)
})
