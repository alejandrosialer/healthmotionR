# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# FingerMovements_char

library(testthat)

# Test class and length
test_that("FingerMovements_char has correct class and length", {
  expect_type(FingerMovements_char, "character")
  expect_equal(length(FingerMovements_char), 1)
})

# Test that it contains a non-empty string
test_that("FingerMovements_char is a non-empty string", {
  expect_true(nchar(FingerMovements_char) > 0)
})

# Test immutability
test_that("FingerMovements_char remains unchanged after tests", {
  original_value <- FingerMovements_char
  expect_identical(FingerMovements_char, original_value)
})
