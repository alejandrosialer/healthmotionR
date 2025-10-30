# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# Stepping_df

library(testthat)

test_that("Stepping_df has correct class", {
  expect_s3_class(Stepping_df, "data.frame")
  expect_equal(ncol(Stepping_df), 6)
  expect_named(Stepping_df, c("Order", "Block", "Height", "Freq", "HRInit", "HRFinal"))
  expect_equal(nrow(Stepping_df), 30)
})

test_that("Stepping_df$Order y Stepping_df$Block son numéricos", {
  expect_type(Stepping_df$Order, "double")
  expect_type(Stepping_df$Block, "double")
})

test_that("Stepping_df$Height es un factor con 2 niveles", {
  expect_s3_class(Stepping_df$Height, "factor")
  expect_equal(nlevels(Stepping_df$Height), 2)
})

test_that("Stepping_df$Freq es un factor con 3 niveles", {
  expect_s3_class(Stepping_df$Freq, "factor")
  expect_equal(nlevels(Stepping_df$Freq), 3)
})

test_that("Stepping_df$HRInit y Stepping_df$HRFinal son numéricos", {
  expect_type(Stepping_df$HRInit, "double")
  expect_type(Stepping_df$HRFinal, "double")
})
