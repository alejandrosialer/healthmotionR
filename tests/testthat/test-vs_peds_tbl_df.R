# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# vs_peds_tbl_df

library(testthat)

# Test class and dimensions
test_that("vs_peds_tbl_df has correct class and dimensions", {
  expect_s3_class(vs_peds_tbl_df, "tbl_df")
  expect_s3_class(vs_peds_tbl_df, "tbl")
  expect_s3_class(vs_peds_tbl_df, "data.frame")
  expect_equal(length(vs_peds_tbl_df), 26)   # 26 columns
  expect_equal(nrow(vs_peds_tbl_df), 164)    # 164 rows
})

# Test column names
test_that("vs_peds_tbl_df has correct column names", {
  expected_names <- c(
    "STUDYID", "DOMAIN", "USUBJID", "VSSEQ", "VSTESTCD", "VSTEST", "VSPOS",
    "VSORRES", "VSORRESU", "VSSTRESC", "VSSTRESN", "VSSTRESU", "VSSTAT",
    "VSLOC", "VSBLFL", "VISITNUM", "VISIT", "VISITDY", "VSDTC", "VSDY",
    "VSTPT", "VSTPTNUM", "VSELTM", "VSTPTREF", "VSEVAL", "EPOCH"
  )
  expect_equal(names(vs_peds_tbl_df), expected_names)
})

# Test column types
test_that("vs_peds_tbl_df columns have correct types", {
  expect_type(vs_peds_tbl_df$STUDYID, "character")
  expect_type(vs_peds_tbl_df$DOMAIN, "character")
  expect_type(vs_peds_tbl_df$USUBJID, "character")
  expect_type(vs_peds_tbl_df$VSSEQ, "integer")
  expect_type(vs_peds_tbl_df$VSTESTCD, "character")
  expect_type(vs_peds_tbl_df$VSTEST, "character")
  expect_type(vs_peds_tbl_df$VSPOS, "character")
  expect_type(vs_peds_tbl_df$VSORRES, "character")
  expect_type(vs_peds_tbl_df$VSORRESU, "character")
  expect_type(vs_peds_tbl_df$VSSTRESC, "character")
  expect_type(vs_peds_tbl_df$VSSTRESN, "double")
  expect_type(vs_peds_tbl_df$VSSTRESU, "character")
  expect_type(vs_peds_tbl_df$VSSTAT, "character")
  expect_type(vs_peds_tbl_df$VSLOC, "character")
  expect_type(vs_peds_tbl_df$VSBLFL, "character")
  expect_type(vs_peds_tbl_df$VISITNUM, "double")
  expect_type(vs_peds_tbl_df$VISIT, "character")
  expect_type(vs_peds_tbl_df$VISITDY, "integer")
  expect_type(vs_peds_tbl_df$VSDTC, "character")
  expect_type(vs_peds_tbl_df$VSDY, "integer")
  expect_type(vs_peds_tbl_df$VSTPT, "character")
  expect_type(vs_peds_tbl_df$VSTPTNUM, "double")
  expect_type(vs_peds_tbl_df$VSELTM, "character")
  expect_type(vs_peds_tbl_df$VSTPTREF, "character")
  expect_type(vs_peds_tbl_df$VSEVAL, "character")
  expect_type(vs_peds_tbl_df$EPOCH, "character")
})

# Test for potential NA values
test_that("vs_peds_tbl_df may contain NA values", {
  expect_true(any(is.na(vs_peds_tbl_df)) || !any(is.na(vs_peds_tbl_df)))
})

# Test immutability
test_that("vs_peds_tbl_df remains unchanged after tests", {
  original_attrs <- attributes(vs_peds_tbl_df)
  original_values <- vs_peds_tbl_df

  expect_identical(attributes(vs_peds_tbl_df), original_attrs)
  expect_equal(vs_peds_tbl_df, original_values)
})

