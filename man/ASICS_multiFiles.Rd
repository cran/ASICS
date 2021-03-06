% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ASICS_multiFiles.R
\name{ASICS_multiFiles}
\alias{ASICS_multiFiles}
\title{Automatic Statistical Identification in Complex Spectra for many files}
\usage{
ASICS_multiFiles(name.dir, ncores = 1, ...)
}
\arguments{
\item{name.dir}{folder path of the Bruker files}

\item{ncores}{number of cores to use. Default to 1 (no parallel processing)}

\item{...}{further arguments to be passed to the function
\code{\link{ASICS}} for specifying the parameters of the algorithm}
}
\value{
A list containing \code{ASICS} results for each spectrum.
}
\description{
Compute ASICS on multiple spectra of a folder.
}
\examples{
\dontshow{
lib_file <- system.file("extdata", "library_for_examples.rda",
                        package = "ASICS")
cur_path <- system.file("extdata", "example_spectra", package = "ASICS")
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
result <- ASICS_multiFiles(name.dir = cur_path,
                           exclusion.areas = to_exclude,
                           nb.iter.signif = 10, which.spectra = 2,
                           library.metabolites = lib_file)
}
\dontrun{
cur_path <- system.file("extdata", "example_spectra", package = "ASICS")
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
res_multi <- ASICS_multiFiles(name.dir = cur_path,
                              exclusion.areas = to_exclude)
}
}
\seealso{
\code{\link{ASICS}}, \code{\link{resASICS-class}}
\code{\link{pure_library}}
}
