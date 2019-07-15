.onLoad <- function(libname, pkgname) {

  read_yaml <- function(pth) {

    config <- yaml::yaml.load_file(file.path(pth), eval.expr = TRUE)

    return(config)
  }

  # config file
  config <- read_yaml("./config.yaml")

}
