#' Test for Proxima Nova import and registration
#'
#' \code{proximanova_test} tests to see if Proxima Nova is imported and registered. 
#' 
#' Import and register Proxima Nova in R with proximanova_install().
#'
#' @md
#' @export
proximanova_test <- function() {
  if (sum(grepl("[Pp]roxima [Nn]ova$", extrafont::fonts())) > 0) {
    "Proxima Nova is imported and registered."
  } else {
    "Proxima Nova isn't imported and registered. Install from Google Fonts and import and register using proximanova_install()."
  }
}