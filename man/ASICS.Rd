% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ASICS.R
\name{ASICS}
\alias{ASICS}
\title{Automatic Statistical Identification in Complex Spectra}
\usage{
ASICS(path, exclusion.areas = matrix(c(4.5, 5.1), ncol = 2),
  max.shift = 0.02, which.spectra = "last", library.metabolites = NULL,
  threshold.noise = 0.02, seed = 1234, nb.iter.signif = 400)
}
\arguments{
\item{path}{folder path of the Bruker files}

\item{exclusion.areas}{definition domain of spectra to exclude (ppm)}

\item{max.shift}{maximum chemical shift allowed (in ppm)}

\item{which.spectra}{if more than one spectra by sample, spectra used to
perform the quantification (either \code{"first"}, \code{"last"} or its
number). Default to \code{"last"}}

\item{library.metabolites}{path of the library containing the references
(pure metabolite spectra). If \code{NULL}, the library included in the
package is used}

\item{threshold.noise}{threshold for signal noise}

\item{seed}{random seed to control randomness in the algorithm (used in the
estimation of significativity of a given metabolite concentration)}

\item{nb.iter.signif}{number of iterations for the estimation of
significativity of a given metabolite concentration. Default to 400}
}
\value{
An object of type \code{\link{resASICS-class}}
}
\description{
Quantification of 1D 1H NMR spectrum with ASICS method using a library of 175
pure metabolite spectra. The method is presented in Tardivel et al. (2017).
}
\examples{
\dontshow{
lib_file <- system.file("extdata", "library_for_examples.rda",
                        package = "ASICS")
cur_path <- system.file("extdata", "example_spectra", "AG_faq_Beck01",
                        package = "ASICS")
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
result <- ASICS(path = cur_path, exclusion.areas = to_exclude,
                nb.iter.signif = 10, library.metabolites = lib_file)
}
\dontrun{
cur_path <- system.file("extdata", "example_spectra", "AG_faq_Beck01",
                        package = "ASICS")
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
result <- ASICS(path = cur_path, exclusion.areas = to_exclude)
}
}
\references{
Tardivel P., Canlet C., Lefort G., Tremblay-Franco M., Debrauwer
L., Concordet D., Servien R. (2017). ASICS: an automatic method for
identification and quantification of metabolites in complex 1D 1H NMR
spectra. \emph{Metabolomics}, \strong{13}(10): 109.
\url{https://doi.org/10.1007/s11306-017-1244-5}
}
\seealso{
\code{\link{resASICS-class}} \code{\link{ASICS_multiFiles}}
\code{\link{pure_library}}
}
