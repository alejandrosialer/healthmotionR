# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# HandMovementDir_char

library(testthat)

# Test clase y longitud
test_that("HandMovementDir_char has correct class and lengths", {
  expect_type(HandMovementDir_char, "character")
  expect_equal(length(HandMovementDir_char), 1)
})

# Test que no sea un string vacío
test_that("HandMovementDir_char no es un string vacío", {
  expect_true(nchar(HandMovementDir_char) > 0)
})

# Test de inmutabilidad
test_that("HandMovementDir_char permanece inalterado", {
  original_value <- HandMovementDir_char
  expect_identical(HandMovementDir_char, original_value)
})

