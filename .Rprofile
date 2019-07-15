source("packrat/init.R")

#' @title Import yaml
#' @description Reads a yaml file
#' @param pth the path to the yaml file
#' @return a nested list
#' @examples
#' \dontrun{
#' pth <- "./tests/testthat/test.yaml"
#' config <- read_yaml(pth)
#' }
read_yaml <- function(pth) {

  config <- yaml::yaml.load_file(file.path(pth), eval.expr = TRUE)

  return(config)
}

# config file
config <- read_yaml("./config.yaml")
