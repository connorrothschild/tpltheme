tpl_color_list <- c(
  `seqblue1` = "#f7fbff",
  `seqblue2` = "#deebf7",
  `seqblue3` = "#c6dbef",
  `seqblue4` = "#9ecae1",
  `seqblue5` = "#6baed6",
  `seqblue6` = "#4292c6",
  `seqblue7` = "#2171b5",
  `seqblue8` = "#08519c",
  `seqblue9` = "#08306b",
  `divred2`  = "#b2182b",
  `divred3`  = "#d6604d",
  `divred4`  = "#f4a582",
  `divred5`  = "#fddbc7",
  `divneutr` = "#dedede",
  `divblue5` = "#d1e5f0",
  `divblue4` = "#92c5de",
  `divblue3` = "#4393c3",
  `divblue2` = "#2166ac",
  `oxfordblue`  = "#151248",
  `granitegray` = "#605F5E",
  `lightblue`   = "#5393EA",
  `yellow`      = "#FFAD05",
  `persiangreen`= "#18A999",
  `platinum`    = "#E2E2E2",
  `pink`        = "#DC479F",
  `desertsand`  = "#EAD2AC",
  `carminepink` = "#E54E4D"
)

#' Function to extract `TPL_color_list` colors as hex codes
#'
#' @param ... Character names of TPL_color_list colors
#' @export
tpl_colors <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return(tpl_color_list)

  tpl_color_list[cols]
}

#' List of TPL Palettes
#'
#' @format A \code{list}
#' @export
tpl_palettes <-
  list(
    `diverging`   = tpl_colors("divred2", "divred3", "divred4", "divred5", "divneutr", "divblue5", "divblue4", "divblue3", "divblue2"),
    `sequential`  = tpl_colors("seqblue1", "seqblue2", "seqblue3", "seqblue4", "seqblue5", "seqblue6", "seqblue7", "seqblue8", "seqblue9"),
    `categorical` = tpl_colors("oxfordblue", "granitegray","lightblue","yellow", "persiangreen", "platinum","pink", "desertsand","carminepink")
  )

#' Texas Policy Lab color palettes
#'
#' Vectors with hex-color codes that correspond to the color palettes found on the Texas Policy Lab website
#' \url{https://www.texaspolicylab.org/}
#'
#' @source Texas Policy Lab website
#'   \url{https://www.texaspolicylab.org/}
#'
#'@family TPL palettes
#'@rdname TPL_palettes
#'@export
palette_tpl_main <- tpl_palettes$categorical

#'@rdname TPL_palettes
#'@export
palette_tpl_diverging <- tpl_palettes$diverging

#'@rdname TPL_palettes
#'@export
palette_tpl_sequential <- tpl_palettes$sequential
