#' Writes any messages resulting from code to the user's clipboard.
#'
#' @param x An expression yielding messages
#'
#' @return No return object. Clipboard will be populated.
#' @export
#'
#' @examples
#' to_clipboard(x = cat('Hi there.'))
to_clipboard <- function(x) {
  message(paste(as.character(substitute(x)), "written to clipboard."))
  write.table(
    paste0(capture.output(x), collapse = "\n"),
    "clipboard",
    col.names = FALSE,
    row.names = FALSE
  )
}
