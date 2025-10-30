# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# acceldata_list

library(testthat)

# ---- Class and structure ----
test_that("acceldata_list has correct structure", {
  expect_type(acceldata_list, "list")
  expect_equal(length(acceldata_list), 4)
  expect_named(acceldata_list, c("PA", "label", "flag", "demo"))
})

# ---- PA ----
test_that("acceldata_list$PA has correct dimensions and types", {
  expect_s3_class(acceldata_list$PA, "data.frame")
  expect_equal(ncol(acceldata_list$PA), 1440)
  expect_equal(nrow(acceldata_list$PA), 1526)
  expect_equal(names(acceldata_list$PA), paste0("V", 1:1440))
  expect_type(acceldata_list$PA[[1]], "integer") # assuming counts
})

# ---- label ----
test_that("acceldata_list$label has correct dimensions and types", {
  expect_s3_class(acceldata_list$label, "data.frame")
  expect_equal(ncol(acceldata_list$label), 3)
  expect_equal(nrow(acceldata_list$label), 1526)
  expected_names <- c("personid", "daylabel", "personid2")
  expect_equal(names(acceldata_list$label), expected_names)

  expect_type(acceldata_list$label$personid, "integer")
  expect_type(acceldata_list$label$daylabel, "integer")
  expect_type(acceldata_list$label$personid2, "integer")
})

# ---- flag ----
test_that("acceldata_list$flag has correct dimensions and types", {
  expect_s3_class(acceldata_list$flag, "data.frame")
  expect_equal(ncol(acceldata_list$flag), 1440)
  expect_equal(nrow(acceldata_list$flag), 1526)
  expect_equal(names(acceldata_list$flag), paste0("V", 1:1440))
  expect_type(acceldata_list$flag[[1]], "integer") # likely 0/1 flags
})

# ---- demo ----
test_that("acceldata_list$demo exists and is a data.frame", {
  expect_s3_class(acceldata_list$demo, "data.frame")
  expect_gt(ncol(acceldata_list$demo), 0)  # at least 1 column
  expect_gt(nrow(acceldata_list$demo), 0)  # at least 1 row
})

# ---- Immutability ----
test_that("acceldata_list remains unchanged after tests", {
  original_names <- names(acceldata_list)
  original_lengths <- sapply(acceldata_list, nrow)

  expect_equal(names(acceldata_list), original_names)
  expect_equal(sapply(acceldata_list, nrow), original_lengths)
})
