% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/profile_do.R
\name{profile_do}
\alias{profile_do}
\title{Make profile.do for Markdown}
\usage{
profile_do(dataset, ...)
}
\arguments{
\item{dataset}{Data set to read in, path to .dta.  If \code{NULL}, no
data set is read in}

\item{...}{additional Stata code to put in profile.do}
}
\value{
Nothing
}
\description{
Creates a profile.do that will run before every code chunk.  Helpful for
reading in the same data sets or setting options
}
\examples{
filename = "cars.dta"
haven::write_dta(data = datasets::cars, path = filename, version = 13)
statamd::profile_do(dataset = filename)
readLines("profile.do")
file.remove(filename)
file.remove("profile.do")
}
