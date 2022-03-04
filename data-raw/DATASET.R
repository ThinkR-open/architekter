## code to prepare `corresp_element_type` dataset goes here

corresp_element_type <- tibble::tribble(
  ~ element_name, ~ element_type,
  "panel_background", "rect",
  "panel_grid", "line",
  "plot_title", "text",
  "plot_subtitle", "text",
  "axis_title", "text",
  "axis_text", "text",
  "legend_title", "text",
  "legend_text", "text")

usethis::use_data(corresp_element_type, overwrite = TRUE)
cat(sinew::makeOxygen("corresp_element_type"),
    file = "R/doc_corresp_element_type.R")
rstudioapi::navigateToFile("R/doc_corresp_element_type.R")
