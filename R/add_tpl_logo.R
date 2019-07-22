#' Texas Policy Lab [ggplot2] theme
#'
#' Add TPL logo to a single plot as grid object
#' Modified from https://gist.github.com/Ryo-N7/67ca1c364c342a82c4098918082ca445
#'
#' @example \dontrun{
#' add_tpl_logo(plot, position = "top right", scale = 1.5)
#' }
#'
#' @param plot The plot object passed to `add_tpl_logo`
#' @param scale The scale of the TPL logo. Every single integer increase increases the scale multiplier (scale = 2 will double the size of the logo). Use decimals for fine-tuned scaling
#' @param position The position of the logo. Options are "top left", "top right", "bottom right", and "bottom left"
#' @md
#' @export
add_tpl_logo <- function(plot, position = "top right", scale = 1) {

  # Useful error message for logo position
  if (!position %in% c("top right", "top left", "bottom right", "bottom left")) {
    stop("Error: Logo position not recognized\n  Try: positon = 'top left', 'top right', 'bottom left', or 'bottom right'")
  }

  # read in raw images
  plot <- plot
  plot_path <- ggplot2::ggsave("plot.png")
  plot <- magick::image_read("plot.png")
  logo_raw <- magick::image_read('https://raw.githubusercontent.com/connorrothschild/tpltheme/master/figures/logo.png')

  # get dimensions of plot for scaling
  plot_height <- magick::image_info(plot)$height
  plot_width <- magick::image_info(plot)$width

  # default scale to 1/7th width of plot
  logo <- magick::image_scale(logo_raw, as.character(plot_width/7*scale))

  # Get width of logo
  logo_width <- magick::image_info(logo)$width
  logo_height <- magick::image_info(logo)$height

  # Set position of logo
  # Position starts at 0,0 at top left
  # Using 0.01 for 1% - aesthetic padding

  if (position == "top right") {
    x_pos = plot_width - logo_width - 0.01 * plot_width
    y_pos = 0.01 * plot_height
  } else if (position == "top left") {
    x_pos = 0.01 * plot_width
    y_pos = 0.01 * plot_height
  } else if (position == "bottom right") {
    x_pos = plot_width - logo_width - 0.01 * plot_width
    y_pos = plot_height - logo_height - 0.01 * plot_height
  } else if (position == "bottom left") {
    x_pos = 0.01 * plot_width
    y_pos = plot_height - logo_height - 0.01 * plot_height
  }

  # Compose the actual overlay
  magick::image_composite(plot, logo, offset = paste0("+", x_pos, "+", y_pos))

}
