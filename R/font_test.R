#' Test for Adobe Caslon Pro & Lato import and registration
#'
#' \code{font_test} tests to see if default fonts are imported and registered.
#'
#' Import and register Adobe Caslon Pro & Lato in R with font_install().
#'
#' @md
#' @export
font_test <- function() {
  if ((sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro$", extrafont::fonts())) > 0) &&
    sum(grepl("[Ll]ato$", extrafont::fonts())) > 0) {
    "Default fonts are imported and registered."
  } else if (sum(grepl("[Ll]ato$", extrafont::fonts())) == 0) {
    "Lato isn't imported and registered. Install the font online and import and register using font_install()."
  } else if (sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro$", extrafont::fonts())) == 0) {
    "Adobe Caslon Pro isn't imported and registered. Install the font online and import and register using font_install()."
  }
}
