#' Returns the run time for a given expression.
#'
#' @param expr Expression to time, contained within brackets
#' @param units Units to compute the run time
#'
#' @return Any assignments and the runtime
#' @export
#'
#' @examples
#' time_that(sum(rnorm(150)), units = 'secs')
time_that <- function(expr, units = 'secs') {
  tic <- Sys.time()
  expr
  toc <- Sys.time()
  difftime(toc, tic, units = units)[[1]]
}
