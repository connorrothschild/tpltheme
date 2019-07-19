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

  if (palette == "default") {
    pal <- palette("default")

  } else {

    pal <- tpl_palettes[[palette]]

    if (reverse) pal <- rev(pal)

  }

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
scale_color_continuous <- function(palette = "sequential", reverse = FALSE, ...) {

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
scale_fill_continuous <- function(palette = "sequential", reverse = FALSE, ...) {

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
