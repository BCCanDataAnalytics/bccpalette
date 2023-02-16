#' Specify fill values for continuous data.
#'
#' @param name Specify which colour set from `bcc_colours` to use (base package
#' includes `brand_cols_only` and `distinct_colours`).
#'
#' @return Takes the place of scale_fill_gradientn in ggplot to specify colours.
#' @export
scale_fill_bcc_c = function(name) {
  ggplot2::scale_fill_gradientn(colours = bcc_palettes(name = name,
                                                       type = "continuous"))
}
