% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/participationRisk-base.R
\name{print.participationRisk}
\alias{print.participationRisk}
\title{Printing a participationRisk}
\usage{
\method{print}{participationRisk}(x, ...)
}
\arguments{
\item{x}{an S3 object of class participationRisk.}

\item{...}{additional parameters.}
}
\value{
None (invisible NULL).
}
\description{
print method for S3 class participationRisk.
}
\examples{
# Creating a new participationRisk.
pr <- participationRisk(volatility = 0.5)
# printing the participationRisk.
pr

}
\seealso{
\code{\link[base]{print}}, \code{\link{participationRisk}}.
}
