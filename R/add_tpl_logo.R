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
add_tpl_logo <- function(plot) {
    plot <- gridExtra::grid.arrange(plot, tpl_logo_text(), ncol = 1, heights = c(30, 1))
}

# plot <- ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) +
#   geom_col() +
#   labs(x="Species", y="Mean Sepal Width (cm)", fill="Species", title="Iris Dataset")
#
# add_tpl_logo(plot)
