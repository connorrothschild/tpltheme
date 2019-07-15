#' Texas Policy Lab [ggplot2] theme
#'
#' Drops tick axes and axes labels
#'
#' @example \dontrun{
#' plot + drop_axis(axis = "both")
#' }
#'
#' @param axis Axis to drop "x", "y", "both", or "neither". The function will keep whatever is not included in "drop."
#'
#' @md
#' @export
drop_axis <- function(axis = "both") {

  if (axis == "y") {

    ggplot2::theme(axis.line.x = ggplot2::element_line(colour = NULL,
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL),
                   axis.line.y = ggplot2::element_blank())

  } else if (axis == "x") {

    ggplot2::theme(axis.line.x = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_line(colour = NULL,
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL),
                   axis.ticks.x = ggplot2::element_blank()
    )

  } else if (axis == "neither") {

    ggplot2::theme(axis.line.x = ggplot2::element_line(colour = NULL,
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL),
                   axis.line.y = ggplot2::element_line(colour = NULL,
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL)
    )

  } else if (axis == "both") {

    ggplot2::theme(axis.line.x = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_blank(),
                   axis.ticks.x = ggplot2::element_blank()
    )

  } else {

    stop('Invalid "axis" argument. Valid arguments are: ',
         '"x", "y", "both", and "neither."',
         call. = FALSE)
  }
}
