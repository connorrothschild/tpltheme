#' Texas Policy Lab [ggplot2] theme
#'
#' Creates a grid object with the TPL logo
#'
#' @import grid
#' @import gridExtra
#' @md
#' @export

tpl_logo_text <- function() {

  grobTree(
    gp = gpar(fontsize = 11, hjust = 1),
    textGrob(label = " POLICY LAB",
             name = "caption1",
             x = unit(1, "npc"),
             y = unit(1, "npc"),
             hjust = 2.2,
             vjust = 0,
             gp = gpar(col = config$palettes$tpl_main$blue,
                       fontfamily = "Adobe Caslon Pro")),
    textGrob(label = "TEXAS",
             x = unit(1, "npc") - grobWidth("caption1") - unit(0.001, "lines"),
             y = unit(1, "npc"),
             hjust = 3.3,
             vjust = 0,
             gp = gpar(col = config$palettes$tpl_main$red,
                       fontfamily = "Adobe Caslon Pro"))
  )
}
