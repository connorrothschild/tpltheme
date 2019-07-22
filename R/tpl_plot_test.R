#' Sample plots to test the appearance of \code{theme_TPL_print}
#'
#' @import ggplot2
#' @import datasets
#'
#' @example \dontrun{
#' tpl_plot_test(type = "scatterplot")
#' }
#'
#' @export
#' @param type Type of plot to be produced. Options include \code{barplot}, \code{scatterplot}, \code{boxplot}, \code{histogram}, and \code{Texas}.
#' @param include.logo Whether to include the TPL logo at the bottom of the plot
#' @param font Font specification
tpl_plot_test <- function(type = "barplot", font = "adobe", include.logo = F) {

  #set theme
  set_tpl_theme(style = "print", font = font)

  #select plot type
    if (type == "barplot") {
  plot <- ggplot2::ggplot(datasets::iris, ggplot2::aes(x=datasets::iris$Species, y=datasets::iris$Sepal.Width, fill=datasets::iris$Species)) +
    ggplot2::geom_bar(stat="summary", fun.y="mean") +
    ggplot2::labs(x="Species", y="Mean Sepal Width (cm)", fill="Species", title="Iris Dataset")
  } else if (type == "scatterplot") {
  plot <- ggplot2::ggplot(datasets::iris, ggplot2::aes(x=jitter(datasets::iris$Sepal.Width), y=jitter(datasets::iris$Sepal.Length), col=datasets::iris$Species, size = datasets::iris$Petal.Length)) +
    ggplot2::geom_point() +
    ggplot2::labs(x="Sepal Width (cm)", y="Sepal Length (cm)", col="Species", title="Iris Dataset", size="Petal Length")
  } else if (type == "boxplot") {
  plot <- ggplot2::ggplot(datasets::iris, ggplot2::aes(x=datasets::iris$Species, y=datasets::iris$Sepal.Width, fill=datasets::iris$Species)) +
    ggplot2::geom_boxplot() +
    ggplot2::labs(x="Species", y="Sepal Width (cm)", fill="Species", title="Iris Dataset")
  } else if (type == "histogram") {
    plot <- ggplot2::ggplot(datasets::iris, ggplot2::aes(x=datasets::iris$Sepal.Width)) +
      ggplot2::geom_histogram(bins = 20) +
      ggplot2::labs(x="Sepal Width (cm)", y="Count", title="Iris Dataset")
  } else if (type == "Texas") {
    set_tpl_theme(style = "Texas", font = font)
    tx_vac <- readr::read_csv("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/data/tx_vac_example.csv")
    plot <- ggplot2::ggplot(data = tx_vac, mapping = ggplot2::aes(x = tx_vac$long, y = tx_vac$lat, group = tx_vac$group, fill = tx_vac$avgvac*100)) +
      ggplot2::coord_fixed(1.3) +
      ggplot2::geom_polygon(color = "black") +
      ggplot2::labs(title = "Texas Vaccination Rate by County",
           subtitle = "Among Kindergarteners",
           fill = "Percent\nVaccinated")
  } else {
    stop("Plot type not found. Try one of the following: 'barplot', 'boxplot', 'scatterplot', 'histogram', 'Texas'",
              call. = FALSE)
  }
    # logo option
    if (include.logo == T) {
      plot <- gridExtra::grid.arrange(plot, tpl_logo_text(), ncol = 1, heights = c(30, 1))
      print("WARNING: Including the TPL logo in a plot will make the output to be difficult to edit (because it is a grid of objects rather than one plot). Consider making include.logo = FALSE. Only use this function to see what the logo looks like, not to make a plot that will be edited in the future.")
    } else if (include.logo == F) {
      return(plot)
    }
    return(plot)
}
