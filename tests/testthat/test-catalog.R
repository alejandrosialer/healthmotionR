test_that("dataset catalog contains every distributed dataset", {
  catalog <- list_datasets()
  expected <- utils::data(package = "healthmotionR")$results[, "Item"]

  expect_s3_class(catalog, "data.frame")
  expect_setequal(catalog$name, expected)
  expect_equal(nrow(catalog), 27)
  expect_true(all(nzchar(catalog$title)))
  expect_true(all(nzchar(catalog$license)))
})

test_that("catalog filters and search are case insensitive", {
  expect_true(all(list_datasets(topic = "GAIT")$topic == "gait"))
  expect_true(all(list_datasets(type = "LIST")$object_type == "list"))
  expect_true("body_metrics_df" %in% search_datasets("HEART")$name)
  expect_true("walk_biomech_tbl_df" %in% search_datasets("walking")$name)
})

test_that("dataset aliases resolve and datasets load without attaching", {
  information <- dataset_info("body_metrics")
  expect_equal(information$name, "body_metrics_df")

  dataset <- load_dataset("body_metrics")
  expect_s3_class(dataset, "data.frame")
  expect_equal(dim(dataset), c(130L, 3L))
})

test_that("dataset export supports CSV and RDS", {
  csv_path <- tempfile(fileext = ".csv")
  rds_path <- tempfile(fileext = ".rds")

  expect_true(file.exists(export_dataset("body_metrics", csv_path)))
  expect_true(file.exists(export_dataset("angle_walk_array", rds_path)))
  expect_error(
    export_dataset("angle_walk_array", tempfile(fileext = ".csv")),
    "CSV export"
  )
})

test_that("quick summary reports table-level statistics", {
  summary <- quick_summary("body_metrics")
  expect_s3_class(summary, "data.frame")
  expect_equal(summary$variable, c("temperature", "gender", "hr"))
  expect_true(all(c("n_missing", "mean", "sd", "min", "max") %in% names(summary)))
})

test_that("catalog helpers reject invalid inputs", {
  expect_error(dataset_info("does-not-exist"), "Unknown dataset")
  expect_error(search_datasets(""), "non-empty")
  expect_error(list_datasets(topic = numeric()), "character vector")
})
