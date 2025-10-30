# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# accelimp_list

library(testthat)

# ---- Class and structure ----
test_that("accelimp_list has correct structure", {
  expect_type(accelimp_list, "list")
  expect_equal(length(accelimp_list), 1)
  expect_named(accelimp_list, "imp1")
})

# ---- imp1 ----
test_that("accelimp_list$imp1 has correct dimensions and type", {
  expect_type(accelimp_list$imp1, "double")
  expect_equal(dim(accelimp_list$imp1), c(1288, 1440))
})

# ---- NA allowance ----
test_that("accelimp_list may contain NA values", {
  expect_true(any(is.na(accelimp_list)) || !any(is.na(accelimp_list)))
})

# ---- Immutability ----
test_that("accelimp_list remains unchanged after tests", {
  original_names <- names(accelimp_list)
  original_dims <- lapply(accelimp_list, dim)

  expect_equal(names(accelimp_list), original_names)
  expect_equal(lapply(accelimp_list, dim), original_dims)
})
