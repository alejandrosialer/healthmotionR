# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.3.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


#' View Available Datasets in healthmotionR
#'
#' This function lists all datasets available in the 'healthmotionR' package.
#' It is retained for backward compatibility; new code can use
#' [list_datasets()] to obtain the complete metadata catalog.
#'
#' @return A character vector with the names of the available datasets.
#'         If no datasets are found, it returns an empty character vector.
#' @examples
#' if (requireNamespace("healthmotionR", quietly = TRUE)) {
#'   library(healthmotionR)
#'   view_datasets_healthmotionR()
#' }
#' @export
view_datasets_healthmotionR <- function() {
  datasets <- list_datasets()$name

  if (length(datasets) == 0) {
    message("No datasets are currently available in the 'healthmotionR' package.")
    return(character(0))
  }
  message("Datasets available in the 'healthmotionR' package:")
  datasets
}
