# logo <- magick::image_read("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/TPL_Logo_Full_TPL_Logo_2_Color.png")
#
# rast <- grid::rasterGrob(logo, interpolate = T)
#
# add_blank_space <- function(plot) {
#   tpl_logo_text <- function() {
#
#     grid::grobTree(
#       gp = grid::gpar(fontsize = 11, hjust = 1),
#       grid::textGrob(label = " ",
#                      name = "caption1",
#                      x = unit(1, "npc"),
#                      y = unit(1, "npc"),
#                      hjust = 2.2,
#                      vjust = 0,
#                      gp = grid::gpar(col = config$palettes$tpl_main$oxfordblue,
#                                      fontfamily = "Adobe Caslon Pro"))
#     )
#   }
#   plot <- gridExtra::grid.arrange(plot, tpl_logo_text(), ncol = 1, heights = c(30, 5))
# }
#
# set_tpl_theme()
# plot <- ggplot(iris, aes(x=jitter(Sepal.Width), y=jitter(Sepal.Length), col=Species, size = Petal.Length)) +
#   geom_point() +
#   labs(x="Sepal Width (cm)", y="Sepal Length (cm)", col="Species", title="Iris Dataset")
#
#
#
# plot + coord_cartesian(clip = 'off') +
#   annotation_custom(rast,
#                     ymin = 8.1,
#                     ymax = 8.7,
#                     xmin = 3.8) +
#   theme(plot.margin = unit(c(4,1,1,1), "lines"))
#
#
#
# add_tpl_logo <- function(plot, position = "top") {
#
#   # add logo
#   logo <- magick::image_read("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/TPL_Logo_Full_TPL_Logo_2_Color.png")
#   rast <- grid::rasterGrob(logo, interpolate = T)
#
#   # return ggplot x and y coordinates
#
#   ggbld <- ggplot_build(plot)
#   xleft <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$x.range[1]
#   xright <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$x.range[2]
#   ybottom <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$y.range[1]
#   ytop <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$y.range[2]
#
#   # add logo
#
#   if (position == "top") {
#     plot <- plot + coord_cartesian(xlim = c(xleft,xright),
#                            ylim = c(ybottom,ytop),
#                            clip = 'off') +
#       annotation_custom(rast,
#                         ymin = ytop * 1.15,
#                         ymax = ytop * 1.25,
#                         xmin = xright * .85) +
#       theme(plot.margin = unit(c(4,1,1,1), "lines"))
#   } else if (position == "bottomright") {
#
#     if (ylim[1] < 0) {
#     #plot <-
#       plot + coord_cartesian(ylim = c(ybottom,ytop),
#                            xlim = c(xleft,xright),
#                            clip = 'off') +
#       annotation_custom(rast,
#                         ymin = (ybottom ^ 5)*-1,
#                         ymax = ymin * 6,
#                         xmin = xright * .85,
#                         xmax = xlim[2]*.98) +
#       theme(plot.margin = unit(c(1,1,4,1), "lines"))
#
#       }
#   }
#   return(plot)
# }
#
# add_tpl_logo(plot, position = "top")
# add_tpl_logo(plot, position = "bottomright")
#
# plot <- ggplot(iris, aes(x=Sepal.Width)) +
#   geom_histogram(bins = 20) +
#   labs(x="Sepal Width (cm)", y="Count", title="Iris Dataset")
#
# add_tpl_logo(plot, position = "top")
# add_tpl_logo(plot, position = "bottomright")
#
# add_tpl_logo <- function(plot, position = "top") {
#
#   # add logo
#   logo <- magick::image_read("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/TPL_Logo_Full_TPL_Logo_2_Color.png")
#   rast <- grid::rasterGrob(logo, interpolate = T)
#
#   # return ggplot x and y coordinates
#
#   ggbld <- ggplot_build(plot)
#   xleft <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$x.range[1]
#   xright <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$x.range[2]
#   ybottom <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$y.range[1]
#   ytop <- ggbld$layout$coord$labels(ggbld$layout$panel_params)[[1]]$y.range[2]
#
#   # add logo
#
#   if (position == "top") {
#     plot <- plot + coord_cartesian(xlim = c(xleft,xright),
#                                    ylim = c(ybottom,ytop),
#                                    clip = 'off') +
#       annotation_custom(rast,
#                         ymin = unit(1, "npc"),
#                         ymax = unit(1, "npc"),
#                         xmin = unit(1, "npc")) +
#       theme(plot.margin = unit(c(4,1,1,1), "lines"))
#   } else if (position == "bottomright") {
#
#       plot <- plot + coord_cartesian(ylim = c(ybottom,ytop),
#                              xlim = c(xleft,xright),
#                              clip = 'off') +
#         annotation_custom(rast,
#                           ymin = (ybottom ^ 5)*-1,
#                           ymax = ymin * 6,
#                           xmin = xright * .85,
#                           xmax = xlim[2]*.98) +
#         theme(plot.margin = unit(c(1,1,4,1), "lines"))
#
#   }
#   return(plot)
# }
#
# add_tpl_logo(plot)
