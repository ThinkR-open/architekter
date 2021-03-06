% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_theme_fun.R
\name{create_theme_fun}
\alias{create_theme_fun}
\title{Create a theme functions by using the {ggplot2} elements extracted from the Figma file}
\usage{
create_theme_fun(.data)
}
\arguments{
\item{.data}{Tibble. {ggplot2} elements as created by \code{architekter::\link{extract_ggplot_theme}()}}
}
\value{
A {ggplot2} theme function.
}
\description{
Create a theme functions by using the {ggplot2} elements extracted from the Figma file
}
\examples{
data(toy_raw_file_content)

library(ggplot2)

my_theme <- toy_raw_file_content \%>\% 
  extract_ggplot_theme() \%>\% 
  create_theme_fun()

\dontrun{
ggplot(data = iris) + 
  aes(x = Sepal.Width, fill = Species) + 
  geom_density() + 
  labs(title = "Sepal width of several species of iris",
       subtitle = "This plot respects the graphic design system defined in Figma",
       x = "Sepal width",
       y = "Density", 
       color = "Species") +
  my_theme()
}
}
