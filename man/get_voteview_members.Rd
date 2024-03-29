% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_voteview_members.R
\name{get_voteview_members}
\alias{get_voteview_members}
\title{Get data on members of Congress from Voteview}
\usage{
get_voteview_members(
  chamber = "all",
  congress = NULL,
  local = TRUE,
  local_dir = "."
)
}
\arguments{
\item{chamber}{Which chamber to get data for. Options are:
\itemize{
\item \code{"all"}, \code{"congress"}: Both House and Senate data (the default).
\item \code{"house"}, \code{"h"}, \code{"hr"}: House data only.
\item \code{"senate"}, \code{"s"}, \code{"sen"}: Senate data only.
These options are case-insensitive. If you explicitly pass a different value,
it will default to "all" with a warning.
}

Note that presidents are included in all datasets. Therefore, reading \emph{both} \code{"house"}
and \code{"senate"} data will duplicate data on the presidents. The recommended way to get
all data is to use the default argument, \code{"all"}.}

\item{congress}{A whole number (to get data for a single Congress), or
a numeric vector (to get data for a set of congresses).
Optional; will retrieve data for all Congresses by default.
If specified, Congress numbers cannot be greater than the \code{\link[=current_congress]{current_congress()}}
(i.e., you cannot try to get future data).}

\item{local}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}} Whether to read the data from a local file, as opposed to the Voteview website. Default is \code{TRUE}. If the local file does not exist, will fall back to reading from online.}

\item{local_dir}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}} The directory containing
the local file. Defaults to the working directory.}
}
\value{
A \code{\link[=tibble]{tibble()}}.

The tibble includes data on the member's office, party, and ideology.
See \href{https://voteview.com/data}{Voteview} for descriptions of specific columns.
}
\description{
\code{get_voteview_members()} returns a tibble of data on members of Congress,
sourced from \href{https://voteview.com/data}{Voteview}. Members in the data include
Senators, Representatives, and Presidents. Each row is one member in one
Congress (i.e., each member is listed once for every two years in office).
}
\details{
See the
\href{https://voteview.com/data}{Voteview} website for more information on their data.

Please cite this dataset as:

Lewis, Jeffrey B., Keith Poole, Howard Rosenthal, Adam Boche, Aaron Rudkin,
and Luke Sonnet (2023). \emph{Voteview: Congressional Roll-Call Votes Database}.
\url{https://voteview.com/}
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
get_voteview_members()

# Force to get data from Voteview website
get_voteview_members(local = FALSE)

# Get data for only one chamber
# NOTE: the President is included in all data
get_voteview_members(chamber = "house")
get_voteview_members(chamber = "senate")
\dontshow{\}) # examplesIf}
# Get data for a specific Congress
get_voteview_members(congress = 100)
get_voteview_members(congress = current_congress())

\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Get data for a set of Congresses
get_voteview_members(congress = 1:10)
\dontshow{\}) # examplesIf}
}
