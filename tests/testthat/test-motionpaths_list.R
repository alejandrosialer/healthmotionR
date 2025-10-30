# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# motionpaths_list

library(testthat)

test_that("motionpaths_list has correct class", {
  expect_type(motionpaths_list, "list")
  expect_named(motionpaths_list, c("trajectories", "groups"))
  expect_equal(length(motionpaths_list), 2)
})

test_that("trajectories es una matriz numérica 40x10", {
  expect_true(is.matrix(motionpaths_list$trajectories))
  expect_type(motionpaths_list$trajectories, "double")
  expect_equal(dim(motionpaths_list$trajectories), c(40, 10))
})

test_that("groups es un factor con 4 niveles", {
  expect_s3_class(motionpaths_list$groups, "factor")
  expect_equal(nlevels(motionpaths_list$groups), 4)
})
