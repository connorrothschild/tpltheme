#' Test for Adobe Caslon Pro import and registration
#'
#' \code{font_test} tests to see if Adobe Caslon Pro is imported and registered.
#'
#' Import and register Adobe Caslon Pro in R with font_install().
#'
#' @md
#' @export
font_test <- function() {
  if (sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro$", extrafont::fonts())) > 0) {
    "Adobe Caslon Pro is imported and registered."
  } else {
    "Adobe Caslon Pro isn't imported and registered. Install the font online and import and register using font_install()."
  }
}
