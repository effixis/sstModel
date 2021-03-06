% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delta-valuation.R
\name{valInfo.delta}
\alias{valInfo.delta}
\title{Providing Information for Market Delta-Normal Remainder Term
Valuation from a marketRisk}
\usage{
\method{valInfo}{delta}(object, market.risk, standalone = NULL, ...)
}
\arguments{
\item{object}{S3 object of class delta.}

\item{market.risk}{S3 object of class marketRisk created using
\code{marketRisk}.}

\item{standalone}{S3 object of class standalone.}

\item{...}{additional arguments.}
}
\value{
A list with the following elements:
\itemize{
  \item \code{sensitivity}: a numeric value. The sensitivities
    (in base currency) with respect to the base risk factors stored
    in \code{risk.factor}, the second element of the list.
  \item \code{risk.factor}: a \code{data.frame} with columns:
  \itemize{
    \item \code{name}: a character value. The names of the base risk
      factors.
    \item \code{id}: an integer value. The position of the base risk
      factors in the covariance matrix in \code{marketRisk}.
    \item \code{scale}: a numeric value. The scales associated to the
      base risk factors.
  }
}
}
\description{
\code{valInfo} is a generic S3 method for classes
  inheriting from item. It returns sufficient information for the
  creation of the valuation function of the item.
}
\seealso{
\code{\link{valInfo}}, \code{\link{delta}},
  \code{\link{marketRisk}}.
}
