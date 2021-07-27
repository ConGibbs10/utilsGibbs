#' Creates a dataframe from a list of vectors not necessarily of equal length. If vectors are of equal length, the dataframe is padded with NA values.
#'
#' @param l List of vectors not necessarily of equal length.
#' @return A data frame with vectors in columns. Unequal length is resolved with NA values.
#' @export
#'
#' @examples
#' l <- list(x = c(1, 2, 3), y = c('a', 'b'))
#' padded_data.frame(l)
padded_data.frame <- function(l, ...) {
  # pad with NAs
  na.pad <- function(x, len) {
    x[1:len]
  }
  # make data frame
  maxlen <- max(sapply(l, length))
  ret <- data.frame(lapply(l, na.pad, len = maxlen), ...)
  return(ret)
}
