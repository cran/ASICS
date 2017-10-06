## ----ASICSload-----------------------------------------------------------
library(ASICS)

## ----lib-----------------------------------------------------------------
head(pure_library$name, n = 20)

## ----ASICS_onefile-------------------------------------------------------
# part of the spectrum to exclude (water)
to_exclude <- matrix(c(4.5,5.1,5.5,6.5), ncol = 2, byrow = TRUE)
result <- ASICS(path = system.file("extdata", "example_spectra",
                                   "AG_faq_Beck01", package = "ASICS"),
                exclusion.areas = to_exclude)
result

## ----plot_spectrum, warning=FALSE, fig.width=8, fig.height=5-------------
plot(result, xmin = 1, xmax = 1.5, ymax = 10, add_metab = "Lactate")

## ----rel_conc------------------------------------------------------------
present_metabolites(result)

## ----PDF, eval=FALSE-----------------------------------------------------
#  ASICSUsersGuide()

## ----sysinfo-------------------------------------------------------------
sessionInfo()

