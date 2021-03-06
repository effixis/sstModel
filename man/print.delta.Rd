% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delta-base.R
\name{print.delta}
\alias{print.delta}
\title{Printing a Delta-Normal Remainder Term}
\usage{
\method{print}{delta}(x, ...)
}
\arguments{
\item{x}{an S3 object of class delta.}

\item{...}{additional parameters.}
}
\value{
None (invisible NULL).
}
\description{
print method for S3 class delta.
}
\examples{
# Creating a new delta.
delta1 <- delta(name        = c("equity", "2YCHF", "EURCHF"),
                currency    = c("EUR", "CHF", "EUR"),
                sensitivity = c(100, 150, 130))
# printing the delta.
print(delta1)

}
\seealso{
\code{\link[base]{print}}, \code{\link{delta}}.
}
