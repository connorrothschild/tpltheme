#' Test for Adobe Caslon Pro & Lato import and registration
#'
#' \code{tpl_font_test} tests to see if default fonts are imported and registered.
#'
#' Import and register Adobe Caslon Pro & Lato in R with tpl_font_install().
#'
#' @md
#' @export
tpl_font_test <- function() {
  if ((sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro*", extrafont::fonts())) > 0) && sum(grepl("[Ll]ato*", extrafont::fonts())) > 0) {
    print("Default fonts are imported and registered.")
  } else {
    if (sum(grepl("[Ll]ato*", extrafont::fonts())) == 0) {
    print("Lato is not imported and registered. Install the font online and import and register using font_install(). If that presents problems, try using sysfonts::font_add('Lato', regular = 'Lato.ttf') with your downloaded font name taking the place of 'Lato.ttf.'")
  } else if (sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro*", extrafont::fonts())) == 0) {
    print("Adobe Caslon Pro is not imported and registered. Install the font online and import and register using font_install(). If that presents problems, try using sysfonts::font_add('Adobe Caslon Pro', regular = 'Adobe Caslon Pro.ttf') with your downloaded font name taking the place of 'Adobe Caslon Pro.ttf.'")
  }
  }
}
