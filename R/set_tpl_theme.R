#' The TPL [ggplot2] theme
#'
#' \code{set_tpl_theme} provides a [ggplot2] theme formatted according to the
#' TPL website.
#'
#' @param style The default theme style for the R session. "print" or "map".
#' @import extrafont
#' @import ggrepel
#' @md
#' @export

set_tpl_theme <- function(style = "print") {

  # set default theme

    if (style == "print") {
    ggplot2::theme_set(theme_tpl_print())
  } else if (style == "Texas") {
    ggplot2::theme_set(theme_tpl_texas())
  } else {
    stop('Style does not exist. Try "print" or "Texas".',
         call. = FALSE
      )
  }

# add font

ggplot2::update_geom_defaults("text", list(family = "Adobe Caslon Pro"))
ggplot2::update_geom_defaults("label", list(family = "Adobe Caslon Pro"))
ggplot2::update_geom_defaults("text_repel", list(family = "Adobe Caslon Pro"))
ggplot2::update_geom_defaults("label_repel", list(family = "Adobe Caslon Pro"))

# set color scales for continuous

options(
  ggplot2.continuous.colour = "gradient",
  ggplot2.continuous.fill = "gradient"
        )

# set colors for single bars, etc.

ggplot2::update_geom_defaults("bar", list(fill = "#151348"))
ggplot2::update_geom_defaults("col", list(fill = "#151348"))
ggplot2::update_geom_defaults("point", list(colour = "#151348"))
ggplot2::update_geom_defaults("line", list(colour = "#151348"))
ggplot2::update_geom_defaults("step", list(colour = "#151348"))
ggplot2::update_geom_defaults("path", list(colour = "#151348"))
ggplot2::update_geom_defaults("boxplot", list(fill = "#151348"))
ggplot2::update_geom_defaults("density", list(fill = "#151348"))
ggplot2::update_geom_defaults("violin", list(fill = "#151348"))

# set colors for stats

ggplot2::update_stat_defaults("count", list(fill = "#151348"))
ggplot2::update_stat_defaults("boxplot", list(fill = "#151348"))
ggplot2::update_stat_defaults("density", list(fill = "#151348"))
ggplot2::update_stat_defaults("ydensity", list(fill = "#151348"))

}
