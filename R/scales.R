#' Texas Policy Lab [ggplot2] theme
#'
#' Color palettes used by TPL
#'
#' @import RColorBrewer
#' @import grDevices
#' @export
#' @param palette Palette name.
tpl_color_pal <- function(palette = "categorical") {
  palette_list <- palette_tpl

  types <- palette_list[[palette]]

  function(n) {
    if (n < 10) {
    types[[n]]
  } else {
    cols <- RColorBrewer::brewer.pal(n, "Paired")
    pal <- grDevices::colorRampPalette(cols)
    pal(n)
  }
  }
}

#' Discrete color scale
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_color_discrete <- function(...) {
  ggplot2::discrete_scale("colour", "tpl", tpl_color_pal(palette = "categorical"), ...)
}

#' Discrete color scale
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_discrete <- scale_color_discrete

#' Discrete fill scale
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_discrete <- function(...) {
  ggplot2::discrete_scale("fill", "tpl", tpl_color_pal(palette = "categorical"), ...)
}

#' Continuous fill scale
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_color_gradientn <- function(...,
                                  colours = c("#1188A6","#117B9B","#116E91","#126186","#12547C","#134771","#133A67","#142D5C","#142052"),#config$palettes$seq[9][[1]],
                                  colors = c("#1188A6","#117B9B","#116E91","#126186","#12547C","#134771","#133A67","#142D5C","#142052"),#config$palettes$seq[9][[1]],
                                  values = NULL,
                                  space = "Lab",
                                  na.value = "grey50",
                                  guide = "colourbar") {

  colours <- if (missing(colours)) colors else colours

  ggplot2::continuous_scale("colour", "gradientn",
                            scales::gradient_n_pal(colours, values, space), na.value = na.value, guide = guide, ...)
}

#' Continuous fill scale
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_gradientn <- scale_color_gradientn

#' Continuous fill scale
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_gradientn <- function(...,
                                 colours = c("#1188A6","#117B9B","#116E91","#126186","#12547C","#134771","#133A67","#142D5C","#142052"),#config$palettes$seq[9][[1]],
                                 colors = c("#1188A6","#117B9B","#116E91","#126186","#12547C","#134771","#133A67","#142D5C","#142052"),#config$palettes$seq[9][[1]],
                                 values = NULL,
                                 space = "Lab",
                                 na.value = "grey50",
                                 guide = "colourbar") {

  colours <- if (missing(colours)) colors else colours

  ggplot2::continuous_scale("fill", "gradientn",
                            scales::gradient_n_pal(colours, values, space), na.value = na.value, guide = guide, ...)
}

#' Continuous fill scale
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_gradient <- scale_fill_gradientn

#' Continuous fill scale
#'
#' @md
#' @param colours vector of colours
#' @param colors vector of colours
#' @param values if colours should not be evenly positioned along the gradient this vector gives the position (between 0 and 1) for each colour in the colours vector. See rescale for a convience function to map an arbitrary range to between 0 and 1
#' @param space colour space in which to calculate gradient. Must be "Lab" - other values are deprecated.
#' @param na.value default color for NA values
#' @param guide legend representation of scale
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_continuous <- scale_fill_gradient

#' Discrete fill scale for ordinal factors
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_ordinal <- scale_fill_discrete

#' Discrete color scale for ordinal factors
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_ordinal <- scale_color_discrete
