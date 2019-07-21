#' #' Texas Policy Lab [ggplot2] theme
#' #'
#' #' Add TPL logo to a single plot as grid object
#' #'
#' #' @example \dontrun{
#' #' add_tpl_logo(plot, size = "large", position = "bottomright", align = .5)
#' #' }
#' #'
#' #' @param plot The plot object passed to `add_tpl_logo`
#' #' @param size The size of the TPL logo
#' #' @param position The position of the logo. Options are "top", "bottomright", and "bottomleft"
#' #' @param align An optional specification of horizontal nudging of the TPL logo
#' #' @import grid
#' #' @import gridExtra
#' #' @md
#' #' @export
#' add_tpl_logo_old <- function(plot, size = "small", position = "top", align = 0) {
#'
#'   # set default height and width
#'
#'   dheight = 287
#'   dwidth = 1156
#'
#'   # image and separator object
#'
#'   logo <- magick::image_read('https://raw.githubusercontent.com/connorrothschild/tpltheme/master/figures/logo.png')
#'   logo <- magick::image_trim(logo)
#'   separator <- grid::rectGrob(gp=grid::gpar(col="white"))
#'
#'   # read image in
#'
#'     if (size == "large") {
#'
#'     logo <- magick::image_scale(logo, dwidth/4)
#'
#'     } else if (size == "small") {
#'
#'     logo <- magick::image_scale(logo, dwidth/3)
#'
#'     }
#'
#'   groblogo <- grid::rasterGrob(logo)
#'
#'     if (size == "large" && position != "bottomleft") {
#'
#'       finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(15 + align, 15 - align, 2))
#'
#'     } else if (size == "small" && position != "bottomleft") {
#'
#'       finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(30 + align, 10 - align,5))
#'
#'     } else if (position == "bottomleft") {
#'
#'       if (size == "large") {
#'
#'          finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(2, 12 + align, 20 - align))
#'
#'        } else if (size == "small") {
#'
#'          finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(2, 6 + align, 18 - align))
#'
#'        } else {
#'          stop("Size specification not found. Options are 'small' and 'large.",
#'               call. = FALSE)
#'        }
#'
#'     }
#'
#'     if (position == "top") {
#'       if (size == "large") {
#'       plot <- gridExtra::grid.arrange(finalgrob, plot, ncol = 1, heights = c(4, 35))
#'       } else if (size == "small") {
#'         plot <- gridExtra::grid.arrange(finalgrob, plot, ncol = 1, heights = c(3, 25))
#'       } else {
#'         stop("Size specification not found. Options are 'small' and 'large.",
#'              call. = FALSE)
#'       }
#'     } else if (position == "bottomright") {
#'       if (size == "large") {
#'         plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(35, 4))
#'       } else if (size == "small") {
#'         plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(25, 3))
#'       } else {
#'         stop("Size specification not found. Options are 'small' and 'large.",
#'              call. = FALSE)
#'       }
#'     } else if (position == "bottomleft") {
#'
#'       if (size == "large") {
#'         plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(30, 4.5))
#'       } else if (size == "small") {
#'         plot <- gridExtra::grid.arrange(plot, finalgrob, ncol = 1, heights = c(25, 3))
#'       } else {
#'         stop("Size specification not found. Options are 'small' and 'large.",
#'              call. = FALSE)
#'     }
#'       } else {
#'       stop("Position specification not found. Please try again with one of the following: 'top', 'bottomright', or 'bottomleft.'",
#'            call. = FALSE)
#'     }
#'   return(plot)
#' }
#'
#'
#'
#'
#'
#' #add_tpl_logo(tpl_plot_test(type = "scatterplot"), size = "small", position = "bottomleft", align = 0)
#'
#' ## Other option (not preferred) ========
#' # plot <- ggplot(iris, aes(x=jitter(Sepal.Width), y=jitter(Sepal.Length), col=Species, size = Petal.Length)) +
#' #   geom_point() +
#' #   labs(x="Sepal Width (cm)", y="Sepal Length (cm)", col="Species", title="Iris Dataset")
#' #
#' # wseparator <- grid::rectGrob(gp=gpar(col="white"))
#' # groblogo <- grobblR::grob_image("figures/logo.png", aes_list = NULL, height = 15, width = 54)
#' # finalgrob <- gridExtra::arrangeGrob(separator, groblogo, separator, widths = c(20,10,5))
#' # lay <- rbind(c(3,3,3,2,2,2),
#' #              c(3,3,3,2,2,2),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1))
#' #
#' # gridExtra::grid.arrange(plot, groblogo, separator, ncol = 2, layout_matrix = lay)
#' #
#' # lay <- rbind(c(1,1,1,2,2,2),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1))
#' #
#' # gridExtra::grid.arrange(plot, groblogo, ncol = 1, layout_matrix = lay, padding = unit(0, "npc"))
#' #
#' # lay <- rbind(c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(1,1,1,1,1,1),
#' #              c(3,3,3,2,2,2),
#' #              c(3,3,3,2,2,2))
#' #
#' # gridExtra::grid.arrange(plot, groblogo, separator, ncol = 2, layout_matrix = lay)
#'
