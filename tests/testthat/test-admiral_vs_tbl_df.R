# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# admiral_vs_tbl_df

library(testthat)

test_that("admiral_vs_tbl_df has correct class and dimensions", {
  expect_s3_class(admiral_vs_tbl_df, "tbl_df")
  expect_equal(ncol(admiral_vs_tbl_df), 24)
  expect_equal(nrow(admiral_vs_tbl_df), 29643)

  expected_names <- c(
    "STUDYID","DOMAIN","USUBJID","VSSEQ","VSTESTCD","VSTEST","VSPOS",
    "VSORRES","VSORRESU","VSSTRESC","VSSTRESN","VSSTRESU","VSSTAT",
    "VSLOC","VSBLFL","VISITNUM","VISIT","VISITDY","VSDTC","VSDY",
    "VSTPT","VSTPTNUM","VSELTM","VSTPTREF"
  )
  expect_named(admiral_vs_tbl_df, expected_names)
})

test_that("admiral_vs_tbl_df columnas tienen clases esperadas", {
  expect_type(admiral_vs_tbl_df$STUDYID, "character")
  expect_type(admiral_vs_tbl_df$DOMAIN, "character")
  expect_type(admiral_vs_tbl_df$USUBJID, "character")
  expect_type(admiral_vs_tbl_df$VSSEQ, "double")
  expect_type(admiral_vs_tbl_df$VSTESTCD, "character")
  expect_type(admiral_vs_tbl_df$VSTEST, "character")
  expect_type(admiral_vs_tbl_df$VSPOS, "character")
  expect_type(admiral_vs_tbl_df$VSORRES, "character")
  expect_type(admiral_vs_tbl_df$VSORRESU, "character")
  expect_type(admiral_vs_tbl_df$VSSTRESC, "character")
  expect_type(admiral_vs_tbl_df$VSSTRESN, "double")
  expect_type(admiral_vs_tbl_df$VSSTRESU, "character")
  expect_type(admiral_vs_tbl_df$VSSTAT, "character")
  expect_type(admiral_vs_tbl_df$VSLOC, "character")
  expect_type(admiral_vs_tbl_df$VSBLFL, "character")
  expect_type(admiral_vs_tbl_df$VISITNUM, "double")
  expect_type(admiral_vs_tbl_df$VISIT, "character")
  expect_type(admiral_vs_tbl_df$VISITDY, "double")
  expect_type(admiral_vs_tbl_df$VSDTC, "character")
  expect_type(admiral_vs_tbl_df$VSDY, "double")
  expect_type(admiral_vs_tbl_df$VSTPT, "character")
  expect_type(admiral_vs_tbl_df$VSTPTNUM, "double")
  expect_type(admiral_vs_tbl_df$VSELTM, "character")
  expect_type(admiral_vs_tbl_df$VSTPTREF, "character")
})
