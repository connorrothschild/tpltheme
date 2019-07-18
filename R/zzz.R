.onLoad <- function(libname, pkgname) {

  conflicted::conflict_prefer("tpltheme", "ggplot2")
  # config <- yaml::read_yaml("https://raw.githubusercontent.com/connorrothschild/tpltheme/master/config.yaml")
  # setwd("/Users/connorrothschild/Desktop/R/TPL/tpltheme")
  # config <- yaml::read_yaml(file.path("config.yaml"))
  # source("packrat/init.R")

}

