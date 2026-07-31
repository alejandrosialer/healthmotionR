# healthmotionR - foundational biomechanics utilities

.validate_numeric_vector <- function(x, argument) {
  if (!is.numeric(x) || is.object(x) || length(x) == 0) {
    stop(sprintf("`%s` must be a non-empty numeric vector.", argument), call. = FALSE)
  }
  invisible(TRUE)
}

#' Calculate triaxial acceleration magnitude
#'
#' Calculate the Euclidean magnitude of acceleration samples measured on three
#' orthogonal axes.
#'
#' @param x,y,z Numeric vectors with equal lengths.
#'
#' @return A numeric vector with `sqrt(x^2 + y^2 + z^2)`.
#' @examples
#' acceleration_magnitude(c(1, 0), c(0, 1), c(0, 0))
#' @export
acceleration_magnitude <- function(x, y, z) {
  .validate_numeric_vector(x, "x")
  .validate_numeric_vector(y, "y")
  .validate_numeric_vector(z, "z")

  if (!(length(x) == length(y) && length(y) == length(z))) {
    stop("`x`, `y`, and `z` must have equal lengths.", call. = FALSE)
  }

  sqrt(x^2 + y^2 + z^2)
}

#' Calculate range of motion
#'
#' @param angle Numeric vector of joint angles.
#' @param na.rm Logical; remove missing values before calculating the range.
#'
#' @return One numeric value equal to the maximum minus the minimum angle.
#' @examples
#' range_of_motion(c(-10, 5, 25))
#' @export
range_of_motion <- function(angle, na.rm = TRUE) {
  .validate_numeric_vector(angle, "angle")
  if (!is.logical(na.rm) || length(na.rm) != 1 || is.na(na.rm)) {
    stop("`na.rm` must be TRUE or FALSE.", call. = FALSE)
  }
  if (!na.rm && anyNA(angle)) {
    return(NA_real_)
  }

  values <- if (na.rm) angle[!is.na(angle)] else angle
  if (length(values) == 0) {
    return(NA_real_)
  }
  diff(range(values))
}

#' Calculate bilateral gait symmetry
#'
#' Compare paired left and right measurements using either the signed symmetry
#' index or a direct ratio. A symmetry index of zero indicates equal values.
#'
#' @param left,right Numeric vectors of paired measurements with equal lengths.
#' @param method `"symmetry_index"` computes
#'   `200 * (left - right) / (left + right)`; `"ratio"` computes
#'   `left / right`.
#'
#' @return A numeric vector. Undefined divisions are returned as `NA`.
#' @examples
#' gait_symmetry(c(1.0, 1.1), c(1.0, 1.0))
#' gait_symmetry(1.1, 1.0, method = "ratio")
#' @export
gait_symmetry <- function(left, right, method = c("symmetry_index", "ratio")) {
  .validate_numeric_vector(left, "left")
  .validate_numeric_vector(right, "right")
  if (length(left) != length(right)) {
    stop("`left` and `right` must have equal lengths.", call. = FALSE)
  }
  method <- match.arg(method)

  denominator <- if (identical(method, "symmetry_index")) left + right else right
  result <- if (identical(method, "symmetry_index")) {
    200 * (left - right) / denominator
  } else {
    left / denominator
  }
  result[denominator == 0] <- NA_real_
  result
}
