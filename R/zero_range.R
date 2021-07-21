#' Check equality among all elements of a vector.
#'
#' @param x A numeric vector.
#' @param tol Tolerance one is willing to accept.
#'
#' @return A logical.
#' @export
#'
#' @examples
#' zero_range(rep(1, times = 5))
zero_range <- function(x, tol = .Machine$double.eps ^ 0.5) {
  if (length(x) == 1){
    return(TRUE)
  }
  x <- range(x) / mean(x)
  isTRUE(all.equal(x[1], x[2], tolerance = tol))
}
