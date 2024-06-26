% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/congresses_and_years.R
\name{current_congress}
\alias{current_congress}
\title{Calculate the current Congress number}
\usage{
current_congress()
}
\value{
A positive whole number.
}
\description{
This function gives the number of the Congress for the
current calendar year, using \code{\link[=Sys.Date]{Sys.Date()}}.
}
\details{
A new Congress begins in every odd-numbered year, starting in 1789.
For example, 2021-2022 was the 117th Congress.
}
\examples{
current_congress()

}
