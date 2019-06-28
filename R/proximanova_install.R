#' Import and register Proxima Nova font
#'
#' \code{proximanova_install} tests to see if Proxima Nova is imported and registered. If Proxima Nova isn't imported and registered, then \code{proximanova_install} imports and registers Proxima Nova with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Proxima Nova must be installed on your computer for \code{proximanova_install} to work.
#' 
#' Test to see if Prooxima Nova is imported and registered with \code{proximanova_test()}.
#'
#' @md
#' @export
proximanova_install <- function() {
  if (sum(grepl("[Pp]roxima [Nn]ova$", extrafont::fonts())) > 0) {
    "Proxima Nova is already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    proximanova_test()
  }
}