#' Import and register Adobe Caslon Pro font
#'
#' \code{font_install} tests to see if Adobe Caslon Pro is imported and registered. If Adobe Caslon Pro isn't imported and registered, then \code{font_install} imports and registers Adobe Caslon Pro with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Adobe Caslon Pro must be installed on your computer for \code{font_install} to work.
#'
#' Test to see if Prooxima Nova is imported and registered with \code{font_test()}.
#'
#' @md
#' @export
font_install <- function() {
  if (sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro$", extrafont::fonts())) > 0) {
    "Adobe Caslon Pro is already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    font_test()
  }
}
