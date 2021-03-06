% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/to_clipboard.R
\name{to_clipboard}
\alias{to_clipboard}
\title{Writes any messages resulting from code to the user's clipboard.}
\usage{
to_clipboard(x)
}
\arguments{
\item{x}{An expression yielding messages}
}
\value{
No return object. Clipboard will be populated.
}
\description{
Writes any messages resulting from code to the user's clipboard.
}
\examples{
to_clipboard(x = cat('Hi there.'))
}
