% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/riskFactor.R
\name{rate}
\alias{rate}
\title{Constructing a Rate (Risk Factor)}
\usage{
rate(name, currency, horizon, scale = NULL)
}
\arguments{
\item{name}{a character value. If the length is one, this corresponds to the name in the covariance matrix of the \code{marketRisk}
to which the rate risk factor is mapped. This means that the risk factor change \eqn{\Delta R_{j}(t, \tau)}
in the FINMA document \emph{"SST-Marktrisiko und -Aggregation Technische Beschreibung"} (version 31.1.2018) will be assumed
to be modeled by the underlying normal random variable corresponding to \code{name} in the covariance matrix
(potentially scaled by \code{scale} if not \code{NULL}). If the length is strictly greater than one,
this corresponds to multiple names in the covariance matrix of the \code{marketRisk}
to which the rate risk factor is mapped in the case of principal component modeling.
This means that the risk factor change \eqn{\Delta R_{j}(t, \tau)}
in the FINMA document \emph{"SST-Marktrisiko und -Aggregation Technische Beschreibung"}
will be assumed to be modeled by a linear combination (with coefficients \code{scale})
of normal random variable corresponding to the multiple names \code{name} in the covariance matrix.
Please refer to the note section to have more information.}

\item{currency}{a character value of length one. The currency in which the underlying
\emph{"Fixed-Income-Assets oder Versicherungsverpflichtungen"} is valuated.
This refers to the currency corresponding to the index \code{j}
in the FINMA document \emph{"SST-Marktrisiko und -Aggregation Technische Beschreibung"}.}

\item{horizon}{a character value of length one. The time-to-maturity
(projected on the time mapping). This refers to the index \eqn{i_{\tau}}
in the FINMA document \emph{"SST-Marktrisiko und -Aggregation Technische Beschreibung"}.}

\item{scale}{a numeric value of length one. If not set \code{NULL},
this defines a scaled risk factor equal to \code{scale} times
the risk factor defined by \code{name} in the covariance matrix contained in \code{marketRisk}.
By default its value is \code{scale = NULL}. In the case of principal component modeling (i.e. \code{name} of
length strictly greater than one) this parameter should be provided as a numeric values of the
same length as \code{name} corresponding to the \emph{loadings} in the principal component decomposition.
Please consider that these loadings should be contained in the Euclidean disk, i.e. the sum of there squared value should be below 1,
if not a warning will be triggered.}
}
\value{
An S3 object, instance of the class rate.
}
\description{
Constructor for the
  S3 class rate. It allows to define a rate-type risk factor. This risk factor refers
  to the \emph{"stetigen Zins"} change \eqn{\Delta R_{j}(t, i_{\tau})} for a certain  \code{horizon} index \eqn{i_{\tau}} and a certain
  \code{currency} j in the
  valuation function for \emph{"Fixed-Income-Assets und Versicherungsverpflichtungen"} presented
  in the FINMA document \emph{"SST-Marktrisiko und -Aggregation Technische Beschreibung"}.
}
\note{
In the case that principal component modeling of rate curves is chosen,
 all risk factors named in \code{name} should be scaled, otherwise an error will be
 triggered.
}
\examples{
# constructing a non-scaled rate risk factor
# (assuming "2Y_CHF" exists in marketRisk).
r <- rate(name     = "2Y_CHF",
          currency = "CHF",
          horizon  = "k")

# constructing a scaled rate risk factor
# (assuming "2Y_CHF" exists in marketRisk).
r <- rate(name     = "2Y_CHF",
          currency = "CHF",
          horizon  = "k",
          scale    = 0.5)

# constructing a rate risk factor from principal component
 r <- rate(name     = c("pcRate_EUR_1",
                        "pcRate_EUR_2",
                        "pcRate_EUR_3"),
           currency = "EUR",
           horizon  = "k",
           scale    = c(0.3, -0.2, sqrt(1-(0.3^2)-((-0.2)^2))))

}
