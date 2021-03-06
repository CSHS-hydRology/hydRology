% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ch_tidyhydat_ECDE_meta.R
\name{ch_tidyhydat_ECDE_meta}
\alias{ch_tidyhydat_ECDE_meta}
\title{Creates an ECDE-like dataframe of metadata}
\usage{
ch_tidyhydat_ECDE_meta(stations)
}
\arguments{
\item{stations}{A vector of WSC station IDs, i.e. c("05BB001", "05BB003", "05BB004", "05BB005")}
}
\value{
Returns a list with three items:
\itemize{
\item {\code{meta} - a dataframe of metadata from \pkg{tidyhydat} in ECDE form (not all ECDE fields are reproduced in this summary)}
\item {\code{H_version} - version information, and }
\item {\code{th_meta} - a dataframe with all \pkg{tidyhdat} fields including:}
\itemize{
  \item {Station - StationID}
  \item {StationName - Station Name}
  \item {HYDStatus - Active or Discontinued}
  \item {Prov - Province}
  \item {Latitude}
  \item {Longitude}
  \item {DrainageArea - km\eqn{^2}{^2}}
  \item {Years - number of years with data}
  \item {From - Start Year}
  \item {To - End Year}
  \item {Reg. - Regulated?} 
  \item {Flow - not captured (differs from ECDE)}
  \item {Level - not captured (differs from ECDE)}
  \item {Sed - not captured (differs from ECDE)}
  \item {OperSched - not captured (differs from ECDE)}
  \item {RealTime - if TRUE/Yes}
  \item {RHBN - if TRUE/Yes is in the reference hydrologic basin network}
  \item {Region - number of region instead of name (differs from ECDE)}
  \item {Datum - reference number (differs from ECDE)}
  \item {Operator - reference number (differs from ECDE)}
}
}
}
\description{
Extracts tombstone (meta) data for stations from \pkg{tidyhydat} in a 
format similar to that used by the Environment Canada Data Explorer (ECDE). The 
result does not capture all the fields in ECDE as ECDE reports the most recent status 
of many fields such as operating schedule.
}
\examples{
\dontrun{
stations <- c("05BB001", "05BB003", "05BB004", "05BB005")
result <- ch_tidyhydat_ECDE_meta(stations)
metadata <- result[[1]]
version <- result[[2]]}

}
\seealso{
\code{\link{ch_get_ECDE_metadata}} \code{\link{ch_tidyhydat_ECDE}}
}
\author{
Paul Whitfield <paul.h.whitfield@gmail.com>
}
