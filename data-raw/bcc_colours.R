# Code to prepare `bcc_colours` dataset.
## To add new colour sets, add a new list element with custom hex codes.

bcc_colours = list(
  brand_cols_only = c("#02bbd3", "#9d5ea6", "#55565b", "#004f59", "#612466", "#97989a",
                               "#00788b", "#843794", "#b784ba", "#635faa", "#a6228c", "#4b5fab",
                               "#02b1b1", "#76bc43", "#fcaf33"),
  distinct_colours = c("#02bbd3", "#a6228c", "#97989a", "#fcaf33","#7AD151FF", "#004f59")
)

usethis::use_data(bcc_colours, overwrite = TRUE)
