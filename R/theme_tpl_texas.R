#' A Texas shaped [ggplot2] theme formatted in TPL style
#'
#' \code{theme_tpl} provides a [ggplot2] theme formatted according to the TPL
#' website
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @param base_family base font family
#' @param base_size base font size
#' @param base_line_size base line
#' @param base_rect_size base rectangle sizes
#' @param scale scale
#' @export
theme_tpl_texas <- function(scale = "continuous",
                           base_size = 12,
                           base_family = "Adobe Caslon Pro",
                           base_line_size = 0.5,
                           base_rect_size = 0.5) {

  gg <- theme_tpl_print(base_size = 12, base_family = "Adobe Caslon Pro",
                         base_line_size = 0.5,
                         base_rect_size = 0.5)

  gg <- gg +  ggplot2::theme(

    # make changes for mapping styles
    axis.text = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    panel.grid = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    legend.margin = ggplot2::margin(t = 6L, r = 6L, b = 6L, l = 6L, "pt")
  )

  if (scale == "continuous") {
    gg <- gg + ggplot2::theme(
      legend.position = "right",
      legend.direction = "vertical",
      legend.title = ggplot2::element_text(size = base_size)
    )
  }
  # return gg
  gg
}

