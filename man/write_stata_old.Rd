% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_stata_old.R
\name{write_stata_old}
\alias{write_stata_old}
\title{Write Stata DTA out in older format}
\usage{
write_stata_old(path, out_path = path, version = 13)
}
\arguments{
\item{path}{path to .dta file}

\item{out_path}{output path of .dta file (assumed to be the same as input
if unspecified)}

\item{version}{version of Stata file to write out}
}
\value{
Path of .dta
}
\description{
Convert Stata DTA files to older format for older versions
}
\examples{
filename = "cars.dta"
haven::write_dta(data = datasets::cars, path = filename, version = 14)
# can't read this in with stata 13
statamd::write_stata_old(path = filename)
file.remove(filename)
}
