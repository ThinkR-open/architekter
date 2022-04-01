library(testthat)
library(architekter)
library(showtext)

font_add(family = "Roboto", system.file("fonts", "Roboto.ttf", package = "architekter"))
font_add(family = "Roboto Light", system.file("fonts", "RobotoLight.ttf", package = "architekter"))

test_check("architekter")
