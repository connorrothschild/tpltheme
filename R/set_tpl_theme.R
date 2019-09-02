#' The TPL [ggplot2] theme
#'
#' \code{set_tpl_theme} provides a [ggplot2] theme formatted according to the
#' TPL website.
#'
#' @param style The default theme style for the R session. Options are "print" or "map".
#' @param font The font for plot labels, axes, and titles. Options are "adobe" (Adobe Caslon Pro) and "lato" (Lato).
#' @import extrafont
#' @import ggrepel
#' @md
#' @export
set_tpl_theme <- function(style = "print", font = "adobe") {

  .onLoad()

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

  if (font == "adobe") {
    ggplot2::theme_update(text = ggplot2::element_text(family = "Adobe Caslon Pro"))
    ggplot2::update_geom_defaults("text", list(family = "Adobe Caslon Pro"))
    ggplot2::update_geom_defaults("label", list(family = "Adobe Caslon Pro"))
    ggplot2::update_geom_defaults("text_repel", list(family = "Adobe Caslon Pro"))
    ggplot2::update_geom_defaults("label_repel", list(family = "Adobe Caslon Pro"))

  } else if (font == "lato") {
    ggplot2::theme_update(text = ggplot2::element_text(family = "Lato"))
    ggplot2::update_geom_defaults("text", list(family = "Lato"))
    ggplot2::update_geom_defaults("label", list(family = "Lato"))
    ggplot2::update_geom_defaults("text_repel", list(family = "Lato"))
    ggplot2::update_geom_defaults("label_repel", list(family = "Lato"))

  } else {
    stop('Font does not exist. Try "adobe" (Adobe Caslon Pro) or "lato" (Lato).',
         call. = FALSE)
  }

# select color palette

# set color scales for continuous

    options(
      ggplot2.continuous.colour = "gradient",
      ggplot2.continuous.fill = "gradient"
        )

# set colors for single bars, etc.

    config <- yaml::read_yaml("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/config.yaml")

    ggplot2::update_geom_defaults("bar", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("col", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("point", list(colour = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("line", list(colour = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("step", list(colour = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("path", list(colour = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("boxplot", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("density", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_geom_defaults("violin", list(fill = config$palettes$tpl_main$oxfordblue))

# set colors for stats

    ggplot2::update_stat_defaults("count", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_stat_defaults("boxplot", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_stat_defaults("density", list(fill = config$palettes$tpl_main$oxfordblue))
    ggplot2::update_stat_defaults("ydensity", list(fill = config$palettes$tpl_main$oxfordblue))

}
