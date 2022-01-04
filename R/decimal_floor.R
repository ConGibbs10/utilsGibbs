#' Rounding of decimals
#'
#' @param x A numeric vector.
#' @param digits The desired number of digits after the decimal point.
#'
#' @description Takes a numeric vector x and returns a numeric vector containing the largest numerics with `digits` places after the decimal not greater than the corresponding elements of x.
#'
#' @return A numeric vector.
#' @export
#'
#' @examples
#' decimal_floor(x = 10.12345, digits = 3)
decimal_floor <- function(x, digits = 1) {
  x2 <- x * 10 ^ digits
  return(floor(x2) / 10 ^ digits)
}
