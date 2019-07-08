#' Import and register Adobe Caslon Pro & Lato font
#'
#' \code{font_install} tests to see if default fonts imported and registered. If Adobe Caslon Pro & Lato are not imported and registered, then \code{font_install} imports and registers Adobe Caslon Pro & Lato with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Adobe Caslon Pr must be installed on your computer for \code{font_install} to work.
#'
#' Test to see if Adobe Caslon Pro is imported and registered with \code{font_test()}.
#'
#' @md
#' @export
font_install <- function() {
  if (sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro$", extrafont::fonts())) > 0 &&
      sum(grepl("[Ll]ato$", extrafont::fonts())) > 0) {
    "Available fonts (Adobe Caslon Pro and Lato) already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    font_test()
  }
}
