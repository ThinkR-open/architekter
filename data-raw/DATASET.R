# usethis::use_data(corresp_element_type, overwrite = TRUE)
# cat(sinew::makeOxygen("corresp_element_type"),
#     file = "R/doc_corresp_element_type.R")

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

corresp_element_type %>%
  write_rds("inst/corresp_element_type.rds")

## code to prepare `toy_raw_file_content` dataset goes here
toy_raw_file_content <- get_raw_file_content(file_key = "wRqIvMmymzSPuj0sEhnORb",
                                             acess_token = Sys.getenv("FIGMA_TOKEN"))

usethis::use_data(toy_raw_file_content, overwrite = TRUE)
rstudioapi::navigateToFile("R/doc_toy_raw_file_content.R")
