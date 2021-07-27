#' Pauses execution of remaining code until the user clicks a button to continue.
#'
#' @return A button for the user to click when they are ready to continue execution.
#' @export
wait <- function() {
  tt <- tcltk::tktoplevel()
  tcltk::tkpack(tcltk::tkbutton(
    tt,
    text = 'Continue',
    command = function()
      tcltk::tkdestroy(tt)
  ),
  side = 'bottom')
  tcltk::tkbind(tt, '<Key>', function()
    tcltk::tkdestroy(tt))
  tcltk::tkwait.window(tt)
}
