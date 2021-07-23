#' Faster alternative to `expand.grid()`
#'
#' @param v1 A vector.
#' @param v2 A vector.
#'
#' @return A dataframe of combinations of `v1` and `v2`.
#' @export
#'
#' @examples
#' expand_grid(v1 = c(1, 2), v2 = c(1, 2, 3, 4))
expand_grid <- function(v1, v2) {
  df <- data.frame(A = rep.int(v1, length(v2)),
                   B = rep.int(v2, rep.int(length(v1), length(v2))))
  return(df)
}
