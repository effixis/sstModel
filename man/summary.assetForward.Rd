% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assetForward-base.R
\name{summary.assetForward}
\alias{summary.assetForward}
\title{Summarizing an Index-Forward}
\usage{
\method{summary}{assetForward}(object, ...)
}
\arguments{
\item{object}{S3 object of class assetForward.}

\item{...}{additional arguments affecting the summary produced.}
}
\value{
S3 object, instance of class \code{c("summaryDefault", "table")}.
}
\description{
summary method for the S3 class assetForward.
}
\examples{
# Creating an asset forward.
af <- assetForward("equity", "EUR", 1, 1000, 1200, "long")
# summarizing the asset forward.
summary(af)

}
\seealso{
\code{\link[base]{summary}}, \code{\link{assetForward}}.
}
