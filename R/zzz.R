.onLoad <- function(libname, pkgname) {

  scales <- c("scale_color_discrete", "scale_colour_ordinal", "scale_colour_discrete", "scale_color_continuous", "scale_color_gradient",
              "scale_colour_gradient", "scale_fill_discrete", "scale_fill_ordinal", "scale_fill_continuous", "scale_fill_gradient")

  suppressMessages(
    for (i in scales) {
  conflicted::conflict_prefer(name   = i,
                              winner = "tpltheme",
                              loser  = "ggplot2")
    }
  )

  # config <- yaml::read_yaml("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/config.yaml")
  # setwd("/Users/connorrothschild/Desktop/R/TPL/tpltheme")
  # config <- yaml::read_yaml(file.path("config.yaml"))
  # source("packrat/init.R")

}
