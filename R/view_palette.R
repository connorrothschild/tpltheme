#' Texas Policy Lab [ggplot2] theme
#'
#' \code{view_palette} displays the colors and hexadecimal codes for \code{palette_tpl_*} vectors.
#' These palettes were generated on www.coolors.co/.
#'
#' @param palette A \code{palette_tpl_*} vector from \code{library(tpltheme)}.
#'   Options are `palette_tpl_main`, `palette_tpl_diverging`, `palette_tpl_politics`, and `palette_tpl_sequential`
#'
#' @examples
#' view_palette()
#' view_palette(palette_tpl_main)
#'
#' @md
#'
#' @export
view_palette <- function(palette = palette_tpl_main) {

  color_palette <- unname(rev(palette))

  data <- tibble::tibble(x = 1,
                         y = 1:length(color_palette),
                         colors = factor(color_palette, levels = color_palette))

  ggplot2::ggplot(data = data) +
    ggplot2::geom_point(ggplot2::aes_string("x", "y", color = "colors"), size = 15) +
    ggplot2::geom_text(ggplot2::aes_string(2, "y"), label = color_palette) +
    ggplot2::scale_color_manual(values = color_palette) +
    ggplot2::scale_x_continuous(limits = c(0, 3)) +
    theme_tpl_texas() +
    ggplot2::guides(color = FALSE)

}
