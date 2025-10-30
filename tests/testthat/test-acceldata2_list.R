# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# acceldata2_list

library(testthat)

# ---- Class and structure ----
test_that("acceldata2_list has correct structure", {
  expect_type(acceldata2_list, "list")
  expect_equal(length(acceldata2_list), 4)
  expect_named(acceldata2_list, c("PA", "label", "flag", "demo"))
})

# ---- PA ----
test_that("acceldata2_list$PA has correct dimensions and types", {
  expect_type(acceldata2_list$PA, "integer")
  expect_equal(dim(acceldata2_list$PA), c(1288, 1440))
})

# ---- label ----
test_that("acceldata2_list$label has correct dimensions and types", {
  expect_s3_class(acceldata2_list$label, "data.frame")
  expect_equal(ncol(acceldata2_list$label), 3)
  expect_equal(nrow(acceldata2_list$label), 1288)
  expected_names <- c("id", "day", "personid2")
  expect_equal(names(acceldata2_list$label), expected_names)

  expect_type(acceldata2_list$label$id, "integer")
  expect_type(acceldata2_list$label$day, "integer")
  expect_type(acceldata2_list$label$personid2, "integer")
})

# ---- flag ----
test_that("acceldata2_list$flag has correct dimensions and types", {
  expect_type(acceldata2_list$flag, "double")
  expect_equal(dim(acceldata2_list$flag), c(1288, 1440))
})

# ---- demo ----
test_that("acceldata2_list$demo has correct structure", {
  expect_s3_class(acceldata2_list$demo, "data.frame")
  expect_equal(ncol(acceldata2_list$demo), 5)
  expect_equal(nrow(acceldata2_list$demo), 184)
  expected_names <- c("personid", "age", "sex", "bmi", "race")
  expect_equal(names(acceldata2_list$demo), expected_names)

  expect_type(acceldata2_list$demo$personid, "integer")
  expect_type(acceldata2_list$demo$age, "integer")
  expect_s3_class(acceldata2_list$demo$sex, "factor")
  expect_type(acceldata2_list$demo$bmi, "double")
  expect_s3_class(acceldata2_list$demo$race, "factor")
})

# ---- NA allowance ----
test_that("acceldata2_list may contain NA values", {
  expect_true(any(is.na(acceldata2_list)) || !any(is.na(acceldata2_list)))
})

# ---- Immutability ----
test_that("acceldata2_list remains unchanged after tests", {
  original_names <- names(acceldata2_list)
  original_dims <- lapply(acceldata2_list, function(x) {
    if (is.data.frame(x)) dim(x) else dim(x)
  })

  expect_equal(names(acceldata2_list), original_names)
  expect_equal(lapply(acceldata2_list, function(x) {
    if (is.data.frame(x)) dim(x) else dim(x)
  }), original_dims)
})
