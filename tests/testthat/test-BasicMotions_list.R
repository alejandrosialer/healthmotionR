# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# BasicMotions_list

library(testthat)

test_that("BasicMotions_list has correct class", {
  # Es una lista de longitud 2 con nombres específicos
  expect_type(BasicMotions_list, "list")
  expect_length(BasicMotions_list, 2)
  expect_named(BasicMotions_list, c("data", "classes"))
})

test_that("BasicMotions_list$data es una lista de 80 matrices numéricas 100x6", {
  data_part <- BasicMotions_list$data
  expect_type(data_part, "list")
  expect_length(data_part, 80)
  expect_true(all(sapply(data_part, is.matrix)))
  expect_true(all(sapply(data_part, is.numeric)))
  expect_true(all(sapply(data_part, function(m) all(dim(m) == c(100, 6)))))
})

test_that("BasicMotions_list$classes es un vector numérico de longitud 80", {
  classes_part <- BasicMotions_list$classes
  expect_type(classes_part, "double")  # numérico
  expect_length(classes_part, 80)
})
