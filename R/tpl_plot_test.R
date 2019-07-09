#' Sample plots to test the appearance of \code{theme_TPL_print}
#'
#' @import ggplot2
#'
#' @example \dontrun{
#' tpl_plot_test(type = "scatterplot")
#' }
#' @export
#' @param type Type of plot to be produced. Options include \code{barplot}, \code{scatterplot}, \code{boxplot}, and \code{histogram}
#' @param include.logo Whether to include the TPL logo at the bottom of the plot
tpl_plot_test <- function(type = "barplot", include.logo = F) {

  #set theme
  set_tpl_theme(style = "print", font = "adobe")

  #select plot type
    if (type == "barplot") {
  plot <- ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) +
    geom_bar(stat="summary", fun.y="mean") +
    labs(x="Species", y="Mean Sepal Width (cm)", fill="Species", title="Iris Dataset")
  } else if (type == "scatterplot") {
  plot <- ggplot(iris, aes(x=jitter(Sepal.Width), y=jitter(Sepal.Length), col=Species, size = Petal.Length)) +
    geom_point() +
    labs(x="Sepal Width (cm)", y="Sepal Length (cm)", col="Species", title="Iris Dataset")
  } else if (type == "boxplot") {
  plot <- ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) +
    geom_boxplot() +
    labs(x="Species", y="Sepal Width (cm)", fill="Species", title="Iris Dataset")
  } else if (type == "histogram") {
    plot <- ggplot(iris, aes(x=Sepal.Width)) +
      geom_histogram(bins = 20) +
      labs(x="Sepal Width (cm)", y="Count", title="Iris Dataset")
  } else {
    stop("Plot type not found. Try one of the following: 'barplot', 'boxplot', 'scatterplot', 'histogram'",
              call. = FALSE)
  }
    # logo option
    if (include.logo == T) {
      plot <- gridExtra::grid.arrange(plot, tpl_logo_text(), ncol = 1, heights = c(30, 1))
    } else if (include.logo == F) {
      return(plot)
    }
    return(plot)
  }

# tpl_plot_test(type = "barplot", include.logo = T)
# tpl_plot_test(type = "boxplot", include.logo = T)
# tpl_plot_test(type = "scatterplot", include.logo = F)
# tpl_plot_test(type = "histogram", include.logo = F)
# tpl_plot_test(type = "pie")
