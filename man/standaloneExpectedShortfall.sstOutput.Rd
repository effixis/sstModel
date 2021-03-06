% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sstOutput-base.R
\name{standaloneExpectedShortfall.sstOutput}
\alias{standaloneExpectedShortfall.sstOutput}
\title{Compute expected shortfall for standalone risk by reference}
\usage{
\method{standaloneExpectedShortfall}{sstOutput}(object, col.name, ...)
}
\arguments{
\item{object}{S3 object of class sstOutput.}

\item{col.name}{name of the column in \code{object$simulations} to
get the expected shortfall from.}

\item{...}{additional arguments passed to \code{expectedShortfall}.}
}
\value{
a numeric value, the expected shortfall.
}
\description{
S3 generic method to compute expected shortfall of
a standalone risk.
}
\seealso{
\code{\link{getDrbc}}.
}
