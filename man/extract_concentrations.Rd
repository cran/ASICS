% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_concentrations.R
\name{extract_concentrations}
\alias{extract_concentrations}
\title{Extract concentrations}
\usage{
extract_concentrations(res_ASICS)
}
\arguments{
\item{res_ASICS}{result of the \code{\link{ASICS_multiFiles}} function}
}
\value{
A data frame containing relative concentrations of identified
metabolites for each spectrum
}
\description{
Combine results of the multiple file ASICS function to obtain quantified
relative concentrations of metabolites for each spectrum in one dataset
}
\examples{
\dontshow{
lib_file <- system.file("extdata", "library_for_examples.rda",
                        package = "ASICS")
cur_path <- system.file("extdata", "example_spectra", package = "ASICS")
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
res_multi <- ASICS_multiFiles(name.dir = cur_path,
                              exclusion.areas = to_exclude,
                              nb.iter.signif = 10, which.spectra = 2,
                              library.metabolites = lib_file, ncores = 1)
quantification <- extract_concentrations(res_multi)
}
\dontrun{
cur_path <- system.file("extdata", "example_spectra", package = "ASICS")
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
res_multi <- ASICS_multiFiles(name.dir = cur_path,
                              exclusion.areas = to_exclude,
                              ncores = 2)

# extract relative concentrations
quantification <- extract_concentrations(res_multi)
}
}
