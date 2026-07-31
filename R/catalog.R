# healthmotionR - dataset discovery and access helpers

.healthmotion_catalog <- function() {
  catalog_path <- system.file(
    "extdata",
    "datasets.csv",
    package = "healthmotionR"
  )

  if (!nzchar(catalog_path)) {
    stop("The healthmotionR dataset catalog could not be found.", call. = FALSE)
  }

  utils::read.csv(
    catalog_path,
    stringsAsFactors = FALSE,
    check.names = FALSE,
    na.strings = c("", "NA")
  )
}

#' List healthmotionR datasets
#'
#' Return a metadata catalog for every dataset distributed with healthmotionR.
#' Results can be filtered by topic or R object type.
#'
#' @param topic Optional character vector of topics to retain.
#' @param type Optional character vector of object types to retain, such as
#'   `data.frame`, `tibble`, `list`, `array`, or `character`.
#'
#' @return A data frame with one row per dataset.
#' @examples
#' list_datasets()
#' list_datasets(topic = "gait")
#' list_datasets(type = "data.frame")
#' @export
list_datasets <- function(topic = NULL, type = NULL) {
  catalog <- .healthmotion_catalog()

  if (!is.null(topic)) {
    if (!is.character(topic) || length(topic) == 0) {
      stop("`topic` must be a non-empty character vector.", call. = FALSE)
    }
    catalog <- catalog[tolower(catalog$topic) %in% tolower(topic), , drop = FALSE]
  }

  if (!is.null(type)) {
    if (!is.character(type) || length(type) == 0) {
      stop("`type` must be a non-empty character vector.", call. = FALSE)
    }
    catalog <- catalog[
      tolower(catalog$object_type) %in% tolower(type),
      ,
      drop = FALSE
    ]
  }

  rownames(catalog) <- NULL
  catalog
}

#' Search healthmotionR datasets
#'
#' Search dataset names, titles, descriptions, topics, and sources without
#' loading the datasets into memory.
#'
#' @param query A non-empty character string.
#' @param topic Optional topic filter passed to [list_datasets()].
#'
#' @return A filtered data frame from the healthmotionR catalog.
#' @examples
#' search_datasets("walking")
#' search_datasets("heart", topic = "physiological_signals")
#' @export
search_datasets <- function(query, topic = NULL) {
  if (!is.character(query) || length(query) != 1 || is.na(query) || !nzchar(query)) {
    stop("`query` must be one non-empty character string.", call. = FALSE)
  }

  catalog <- list_datasets(topic = topic)
  fields <- c("name", "python_name", "title", "description", "topic", "source")
  searchable <- do.call(paste, c(catalog[fields], sep = " "))
  keep <- grepl(tolower(query), tolower(searchable), fixed = TRUE)
  catalog[keep, , drop = FALSE]
}

#' Get metadata for one dataset
#'
#' @param name Dataset name or its language-neutral Python alias.
#'
#' @return A one-row data frame.
#' @examples
#' dataset_info("body_metrics_df")
#' dataset_info("body_metrics")
#' @export
dataset_info <- function(name) {
  if (!is.character(name) || length(name) != 1 || is.na(name) || !nzchar(name)) {
    stop("`name` must be one non-empty character string.", call. = FALSE)
  }

  catalog <- .healthmotion_catalog()
  keep <- tolower(catalog$name) == tolower(name) |
    tolower(catalog$python_name) == tolower(name)

  if (!any(keep)) {
    stop(
      sprintf(
        "Unknown dataset '%s'. Use list_datasets() to view available names.",
        name
      ),
      call. = FALSE
    )
  }

  catalog[which(keep)[1], , drop = FALSE]
}

#' Load one healthmotionR dataset
#'
#' @param name Dataset name or its language-neutral Python alias.
#'
#' @return The dataset in its native R representation.
#' @examples
#' body_metrics <- load_dataset("body_metrics")
#' head(body_metrics)
#' @export
load_dataset <- function(name) {
  info <- dataset_info(name)
  data_environment <- new.env(parent = emptyenv())
  loaded <- utils::data(
    list = info$name,
    package = "healthmotionR",
    envir = data_environment
  )

  if (!info$name %in% loaded || !exists(info$name, envir = data_environment, inherits = FALSE)) {
    stop(sprintf("Dataset '%s' could not be loaded.", info$name), call. = FALSE)
  }

  get(info$name, envir = data_environment, inherits = FALSE)
}

#' Export one healthmotionR dataset
#'
#' @param name Dataset name or its language-neutral Python alias.
#' @param path Destination file path.
#' @param format Either `"rds"` for every R object or `"csv"` for tabular
#'   datasets. The default is inferred from the path extension when possible.
#'
#' @return The normalized destination path, invisibly.
#' @examples
#' destination <- tempfile(fileext = ".csv")
#' export_dataset("body_metrics", destination)
#' @export
export_dataset <- function(name, path, format = NULL) {
  if (!is.character(path) || length(path) != 1 || is.na(path) || !nzchar(path)) {
    stop("`path` must be one non-empty character string.", call. = FALSE)
  }

  if (is.null(format)) {
    extension <- tolower(tools::file_ext(path))
    format <- if (extension %in% c("csv", "rds")) extension else "rds"
  }
  format <- match.arg(tolower(format), c("rds", "csv"))

  dataset <- load_dataset(name)
  parent_directory <- dirname(path)
  if (!dir.exists(parent_directory)) {
    dir.create(parent_directory, recursive = TRUE, showWarnings = FALSE)
  }

  if (identical(format, "csv")) {
    if (!(is.data.frame(dataset) || is.matrix(dataset))) {
      stop(
        "CSV export is available only for data frames and matrices; use RDS for this dataset.",
        call. = FALSE
      )
    }
    utils::write.csv(dataset, path, row.names = FALSE)
  } else {
    saveRDS(dataset, path)
  }

  invisible(normalizePath(path, winslash = "/", mustWork = TRUE))
}

#' Produce a quick structural and statistical summary
#'
#' @param x A dataset name or an R object.
#'
#' @return A data frame for tabular and list objects, or a named list for
#'   vectors, matrices, and arrays.
#' @examples
#' quick_summary("body_metrics")
#' quick_summary(c(1, 2, 3, NA))
#' @export
quick_summary <- function(x) {
  if (is.character(x) && length(x) == 1 && !is.na(x)) {
    catalog <- .healthmotion_catalog()
    if (tolower(x) %in% tolower(c(catalog$name, catalog$python_name))) {
      x <- load_dataset(x)
    }
  }

  if (is.data.frame(x)) {
    summarize_column <- function(column) {
      numeric_column <- is.numeric(column)
      values <- column[!is.na(column)]
      c(
        class = class(column)[1],
        n_missing = sum(is.na(column)),
        n_unique = length(unique(values)),
        mean = if (numeric_column && length(values)) mean(values) else NA_real_,
        sd = if (numeric_column && length(values) > 1) stats::sd(values) else NA_real_,
        min = if (numeric_column && length(values)) min(values) else NA_real_,
        max = if (numeric_column && length(values)) max(values) else NA_real_
      )
    }

    summaries <- lapply(x, summarize_column)
    data.frame(
      variable = names(x),
      class = vapply(summaries, `[[`, character(1), "class"),
      n_missing = as.integer(vapply(summaries, `[[`, character(1), "n_missing")),
      n_unique = as.integer(vapply(summaries, `[[`, character(1), "n_unique")),
      mean = as.numeric(vapply(summaries, `[[`, character(1), "mean")),
      sd = as.numeric(vapply(summaries, `[[`, character(1), "sd")),
      min = as.numeric(vapply(summaries, `[[`, character(1), "min")),
      max = as.numeric(vapply(summaries, `[[`, character(1), "max")),
      row.names = NULL,
      check.names = FALSE
    )
  } else if (is.list(x)) {
    component_dimensions <- vapply(
      x,
      function(component) {
        dimensions <- dim(component)
        if (is.null(dimensions)) as.character(length(component)) else paste(dimensions, collapse = " x ")
      },
      character(1)
    )
    data.frame(
      component = names(x) %||% rep("", length(x)),
      class = vapply(x, function(component) class(component)[1], character(1)),
      dimensions = component_dimensions,
      row.names = NULL,
      check.names = FALSE
    )
  } else {
    values <- if (is.numeric(x)) x[!is.na(x)] else x
    list(
      class = class(x)[1],
      dimensions = if (is.null(dim(x))) length(x) else dim(x),
      n_missing = sum(is.na(x)),
      n_unique = length(unique(as.vector(x[!is.na(x)]))),
      mean = if (is.numeric(x) && length(values)) mean(values) else NA_real_,
      sd = if (is.numeric(x) && length(values) > 1) stats::sd(values) else NA_real_,
      min = if (is.numeric(x) && length(values)) min(values) else NA_real_,
      max = if (is.numeric(x) && length(values)) max(values) else NA_real_
    )
  }
}

`%||%` <- function(x, y) {
  if (is.null(x)) y else x
}
