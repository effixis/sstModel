% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marketRisk-simulation.R
\name{simulate.marketRisk}
\alias{simulate.marketRisk}
\title{Simulate from a MarketRisk}
\usage{
\method{simulate}{marketRisk}(object, nsim, seed = NULL, DT = FALSE, ...)
}
\arguments{
\item{object}{object of class marketRisk.}

\item{nsim}{strictly positive integer value of length one. The number
of simulations.}

\item{seed}{positive integer value of length one. The seed for
reproducibility.}

\item{DT}{a boolean value, should we cast the simulation matrix in a data.table?}

\item{...}{additional arguments.}
}
\value{
a matrix or data.table of base simulations.
}
\description{
\code{simulate} is a generic S3 method for classes
  inheriting from risk. It returns a vector of risk-factor
  simulations for the corresponding risk.
}
\seealso{
\code{\link[stats]{simulate}}, \code{\link{marketRisk}}.
}
