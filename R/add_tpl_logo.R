#' Texas Policy Lab [ggplot2] theme
#'
#' Add TPL logo to a single plot as grid object
#'
#' @example \dontrun{
#' add_tpl_logo(plot, size = "regular", position = "bottomright", align = .5)
#' }
#' @import grid
#' @import gridExtra
#' @md
#' @export
add_tpl_logo <- function(plot, size = "regular", position = "top", align = 0) {

  img <- "https://raw.githubusercontent.com/connorrothschild/tpltheme/master/TPL_Logo_Full_TPL_Logo_2_Color.png"
  download.file(img, 'figures/logo.png', mode = 'wb')
  separator <- grid::rectGrob(gp=grid::gpar(col="white"))

    if (size == "regular" && position != "bottomleft") {

      groblogo <- grobblR::grob_image("figures/logo.png", aes_list = NULL, height = 15, width = 54)
      finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(15 + align,10 - align,2))

    } else if (size == "small" && position != "bottomleft") {

      groblogo <- grobblR::grob_image("figures/logo.png", aes_list = NULL, height = 10, width = 36)
      finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(30 + align,10 - align,5))

    } else if (position == "bottomleft") {
       if (size == "regular") {

         groblogo <- grobblR::grob_image("figures/logo.png", aes_list = NULL, height = 15, width = 54)
         finalgrob <- gridExtra::arrangeGrob(groblogo, separator, widths = c(12 + align,20 - align))

       } else if (size == "small") {

         groblogo <- grobblR::grob_image("figures/logo.png", aes_list = NULL, height = 10, width = 36)
         finalgrob <- gridExtra::arrangeGrob(groblogo, separator, widths = c(10 + align,24 - align))

       } else {
         stop("Size specification not found. Options are 'small' and 'regular.",
              call. = FALSE)
       }

    }

    if (position == "top") {
      if (size == "regular") {
      plot <- gridExtra::grid.arrange(finalgrob, plot, ncol = 1, heights = c(5, 30))
      } else if (size == "small") {
        plot <- gridExtra::grid.arrange(finalgrob, plot, ncol = 1, heights = c(3, 20))
      } else {
        stop("Size specification not found. Options are 'small' and 'regular.",
             call. = FALSE)
      }
    } else if (position == "bottomright") {
      if (size == "regular") {
        plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(30, 5))
      } else if (size == "small") {
        plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(20, 3))
      } else {
        stop("Size specification not found. Options are 'small' and 'regular.",
             call. = FALSE)
      }
    } else if (position == "bottomleft") {

      if (size == "regular") {
        plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(30, 5))
      } else if (size == "small") {
        plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(20, 3))
      } else {
        stop("Size specification not found. Options are 'small' and 'regular.",
             call. = FALSE)
    }
      } else {
      stop("Position specification not found. Please try again with one of the following: 'top', 'bottomright', or 'bottomleft.'",
           call. = FALSE)
    }
  return(plot)
}

# add_tpl_logo(tpl_plot_test(type = "scatterplot"), size = "regular", position = "bottomright", align = .5)

## Other option (not preferred) ========
# plot <- ggplot(iris, aes(x=jitter(Sepal.Width), y=jitter(Sepal.Length), col=Species, size = Petal.Length)) +
#   geom_point() +
#   labs(x="Sepal Width (cm)", y="Sepal Length (cm)", col="Species", title="Iris Dataset")
#
# wseparator <- grid::rectGrob(gp=gpar(col="white"))
# groblogo <- grobblR::grob_image("figures/logo.png", aes_list = NULL, height = 15, width = 54)
# finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(20,10,5))
# lay <- rbind(c(3,3,3,2,2,2),
#              c(3,3,3,2,2,2),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1))
#
# gridExtra::grid.arrange(plot, groblogo, separator, ncol = 2, layout_matrix = lay)
#
# lay <- rbind(c(1,1,1,2,2,2),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1))
#
# gridExtra::grid.arrange(plot, groblogo, ncol = 1, layout_matrix = lay, padding = unit(0, "npc"))
#
# lay <- rbind(c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(1,1,1,1,1,1),
#              c(3,3,3,2,2,2),
#              c(3,3,3,2,2,2))
#
# gridExtra::grid.arrange(plot, groblogo, separator, ncol = 2, layout_matrix = lay)
