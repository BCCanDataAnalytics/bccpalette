#' Generate a custom palette for input into scale colour functions.
#'
#' @description
#' This function is called by the scale_bcc functions to extract colours from
#' the custom colour set `bcc_colours`.
#'
#' @param name Specify which colour set to use from `bcc_colours`.
#' @param n Number of colours to extract.
#' @param all_palettes Specify custom colour set (default `bcc_colours`).
#' @param type Specify discrete or continuous data.
#'
#' @return A list of hex codes.
#' @export
bcc_palettes = function(name, n, all_palettes = bccpalette::bcc_colours, type = c("discrete", "continuous")) {
  palette = all_palettes[[name]]

  # for continuous type
  if (missing(n)) {
    n = length(palette)
  }

  type = match.arg(type)
  out = switch(type,
               continuous = grDevices::colorRampPalette(palette)(n),

               # for discrete, if n is smaller than palette, list palette colours in order
               if (n <= length(palette)) {
                 discrete = palette[1:n]
               } else {
                 discrete = grDevices::colorRampPalette(palette)(n)
               }
  )
  structure(out, name = name, class = "palette")
}
