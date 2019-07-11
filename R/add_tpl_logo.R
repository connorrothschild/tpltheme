#' Texas Policy Lab [ggplot2] theme
#'
#' Add TPL logo to a single plot as grid object
#'
#' @example \dontrun{
#' add_tpl_logo(plot)
#' }
#' @import grid
#' @import gridExtra
#' @md
#' @export
add_tpl_logo <- function(plot, align = 0) {
  tpl_logo_text <- function() {

    grid::grobTree(
      gp = grid::gpar(fontsize = 11, hjust = 1),
      grid::textGrob(label = " POLICY LAB",
                     name = "caption1",
                     x = unit(1 + align/10, "npc"),
                     y = unit(1, "npc"),
                     hjust = 2.2,
                     vjust = 0,
                     gp = grid::gpar(col = config$palettes$tpl_main$oxfordblue,
                                     fontfamily = "Adobe Caslon Pro")),
      grid::textGrob(label = "TEXAS",
                     x = unit(1 + align/10, "npc") - grid::grobWidth("caption1") - unit(0.001, "lines"),
                     y = unit(1, "npc"),
                     hjust = 3.3,
                     vjust = 0,
                     gp = grid::gpar(col = config$palettes$tpl_main$carminepink,
                                     fontfamily = "Adobe Caslon Pro"))
    )
  }

    plot <- gridExtra::grid.arrange(plot, tpl_logo_text(), ncol = 1, heights = c(30, 1))
}
