# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.2.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


#' View Available Datasets in healthmotionR
#'
#' This function lists all datasets available in the 'healthmotionR' package.
#' If the 'healthmotionR' package is not loaded, it stops and shows an error message.
#' If no datasets are available, it returns a message and an empty vector.
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
  # Check if the package is loaded
  if (!"healthmotionR" %in% .packages()) {
    stop("The 'healthmotionR' package must be loaded to view its datasets.")
  }

  # Extract dataset information
  datasets_info <- utils::data(package = "healthmotionR")$results

  # Check if there are datasets available
  if (nrow(datasets_info) == 0) {
    message("No datasets are currently available in the 'healthmotionR' package.")
    return(character(0))
  }

  # Extract dataset names
  datasets <- datasets_info[, "Item"]

  # Display the message with available datasets
  message("Datasets available in the 'healthmotionR' package:")

  # Return a vector of datasets without printing to the console
  return(datasets)
}
