#' Texas Policy Lab [ggplot2] theme
#'
#' Creates a grid object with the TPL logo
#'
#' @import grid
#' @import gridExtra
#' @md
#' @export
tpl_logo_text <- function() {

  grid::grobTree(
    gp = grid::gpar(fontsize = 11, hjust = 1),
    grid::textGrob(label = " POLICY LAB",
             name = "caption1",
             x = unit(1, "npc"),
             y = unit(1, "npc"),
             hjust = 2.2,
             vjust = 0,
             gp = grid::gpar(col = "#151248",#config$palettes$tpl_main$oxfordblue,
                       fontfamily = "Adobe Caslon Pro")),
    grid::textGrob(label = "TEXAS",
             x = unit(1, "npc") - grid::grobWidth("caption1") - unit(0.001, "lines"),
             y = unit(1, "npc"),
             hjust = 3.3,
             vjust = 0,
             gp = grid::gpar(col = "#E54E4D",#config$palettes$tpl_main$carminepink,
                       fontfamily = "Adobe Caslon Pro"))
  )
}
