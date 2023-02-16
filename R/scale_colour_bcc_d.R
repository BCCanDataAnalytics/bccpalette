#' Specify colour (outline) values for discrete data.
#'
#' @param name Specify which colour set from `bcc_colours` to use (base package
#' includes `brand_cols_only` and `distinct_colours`).
#' @param col_vec Specify which column in the dataset that the colours will be
#' used for, in this format: `data$column`. This is used to determine n number
#' of colours to extract from the palette.
#'
#' @return Takes the place of scale_colour_manual in ggplot to specify colours.
#' @export
scale_colour_bcc_d = function(name, col_vec) {
  ggplot2::scale_colour_manual(values = bcc_palettes(name, n = dplyr::n_distinct(col_vec),
                                                     type = "discrete"))
}
