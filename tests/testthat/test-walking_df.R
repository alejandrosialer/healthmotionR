# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# walking_df

library(testthat)

test_that("walking_df has correct class", {
  expect_s3_class(walking_df, "data.frame")
  expect_equal(ncol(walking_df), 5)
  expect_named(walking_df, c("sex", "age", "YA", "YB", "src"))
  expect_equal(nrow(walking_df), 890)
})

test_that("walking_df columnas tienen clases adecuadas", {
  expect_s3_class(walking_df$sex, "factor")
  expect_equal(nlevels(walking_df$sex), 2)

  expect_type(walking_df$age, "double")

  expect_s3_class(walking_df$YA, "ordered")
  expect_equal(nlevels(walking_df$YA), 4)

  expect_s3_class(walking_df$YB, "ordered")
  expect_equal(nlevels(walking_df$YB), 4)

  expect_s3_class(walking_df$src, "factor")
  expect_equal(nlevels(walking_df$src), 3)
})
