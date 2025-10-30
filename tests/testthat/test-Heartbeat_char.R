# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# Heartbeat_char

library(testthat)

# Test clase y longitud
test_that("Heartbeat_char has correct class and length", {
  expect_type(Heartbeat_char, "character")
  expect_equal(length(Heartbeat_char), 1)
})

# Test que no sea un string vacío
test_that("Heartbeat_char no es un string vacío", {
  expect_true(nchar(Heartbeat_char) > 0)
})

# Test de inmutabilidad
test_that("Heartbeat_char permanece inalterado", {
  original_value <- Heartbeat_char
  expect_identical(Heartbeat_char, original_value)
})
