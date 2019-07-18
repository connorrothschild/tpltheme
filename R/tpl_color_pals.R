#' Texas Policy Lab [ggplot2] theme
#'
#' Set custom color palettes in the `tplthemes` library
#' Color palettes found on http://colorbrewer2.org and are colorblind safe.
#'
#' @import RColorBrewer
#' @import grDevices
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
set_color_pal <- function(palette = "categorical", reverse = FALSE, ...) {
  pal <- tpl_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  # function(n) {
  #   if (n < 10) {
  #     types[[n]]
  #   } else {
  #     cols <- RColorBrewer::brewer.pal(n, "Paired")
  #     pal <- grDevices::colorRampPalette(cols)
  #     pal(n)
  #   }
  # }

  grDevices::colorRampPalette(pal, ...)

}

#' Discrete color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_color_discrete <- function(palette = "categorical", reverse = FALSE, ...) {

  pal <- set_color_pal(palette = palette, reverse = reverse)
  ggplot2::discrete_scale("colour", paste0("tpl_", palette), palette = pal, ...)

}

#' Discrete color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_colour_ordinal <- scale_color_discrete

#' Discrete color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_colour_discrete <- scale_color_discrete

#' Continuous color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_color_continuous <- function(palette = "categorical", reverse = FALSE, ...) {

  pal <- set_color_pal(palette = palette, reverse = reverse)
  ggplot2::scale_color_gradientn(colours = pal(256), ...)

}

#' Continuous color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_color_gradient <- scale_color_continuous

#' Continuous color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_colour_gradient <- scale_color_continuous

#' Continuous color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_color_gradientn <- scale_color_continuous

#' Continuous color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_colour_gradientn <- scale_color_continuous

#' Discrete fill scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_fill_discrete <- function(palette = "categorical", reverse = FALSE, ...) {

  pal <- set_color_pal(palette = palette, reverse = reverse)
  ggplot2::discrete_scale("fill", paste0("tpl_", palette), palette = pal, ...)

}

#' Discrete color scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_fill_ordinal <- scale_fill_discrete

#' Continuous fill scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_fill_continuous <- function(palette = "categorical", reverse = FALSE, ...) {

  pal <- set_color_pal(palette = palette, reverse = reverse)
  ggplot2::scale_fill_gradientn(colours = pal(256), ...)

}

#' Continuous fill scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_fill_gradientn <- scale_fill_continuous

#' Continuous fill scale
#'
#' @param palette Character name of palette in tpl_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to \code{discrete_scale()}
#'
#' @md
#' @export
scale_fill_gradient <- scale_fill_continuous

# set_tpl_theme()
# ggplot2::ggplot(datasets::iris, ggplot2::aes(x=datasets::iris$Species, y=datasets::iris$Sepal.Width, fill=datasets::iris$Species)) +
#   ggplot2::geom_bar(stat="summary", fun.y="mean") +
#   ggplot2::labs(x="Species", y="Mean Sepal Width (cm)", fill="Species", title="Iris Dataset") +
#   scale_fill_discrete(palette = "categorical")
#
# set_tpl_theme(style = "print", font = "lato")
# ggplot(diamonds) +
#   geom_bar(aes(x = cut, fill = clarity)) +
#   labs(title = "The TPL Color Palette in Action",
#        subtitle = "On sample data",
#        x = "Cut",
#        y = "Count",
#        fill = "Clarity")
#
# ggplot(diamonds) +
#   geom_bar(aes(x = cut, fill = clarity)) +
#   labs(title = "The TPL Color Palette in Action",
#        subtitle = "(reversed)",
#        x = "Cut",
#        y = "Count",
#        fill = "Clarity") +
#   scale_fill_discrete(reverse = TRUE)
#
# tx_vac <- readr::read_csv("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/data/tx_vac_example.csv")
# set_tpl_theme(style = "Texas")
# tx_vac %>%
#   ggplot2::ggplot(mapping = ggplot2::aes(x = long, y = lat, group = group, fill = subregion)) +
#   ggplot2::coord_fixed(1.3) +
#   ggplot2::geom_polygon(color = "black", show.legend = FALSE) +
#   ggplot2::labs(title = "Texas Counties") +
#   scale_fill_discrete(palette = "categorical")
#
# set_tpl_theme(style = "Texas")
# ggplot2::ggplot(data = tx_vac, mapping = ggplot2::aes(x = long, y = lat, group = group, fill = avgvac*100)) +
#   ggplot2::coord_fixed(1.3) +
#   ggplot2::geom_polygon(color = "black") +
#   labs(title = "Texas Vaccination Rate by County",
#        subtitle = "Using a sequential color palette",
#        fill = "Percent\nVaccinated",
#        caption = "Source: Texas DSHS") +
#   scale_fill_continuous(palette = "sequential", limits = c(78.3,100))
#
# ggplot2::ggplot(data = tx_vac, mapping = ggplot2::aes(x = long, y = lat, group = group, fill = avgvac*100)) +
#   ggplot2::coord_fixed(1.3) +
#   ggplot2::geom_polygon(color = "black") +
#   labs(title = "Texas Vaccination Rate by County",
#        subtitle = "Using a divergent color palette",
#        fill = "Percent\nVaccinated",
#        caption = "Source: Texas DSHS") +
#   scale_fill_continuous(palette = "diverging", limits = c(78.3,100))
