
required_packages <- function() {
  
  pkg_check <- function(packages) {
    new.pkg <- packages[!(packages %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) install.packages(new.pkg, dependencies = TRUE)
    sapply(new.pkg, require, character.only = TRUE)
  }
  packages <- c(
    "tidyverse",
    "tidyquant",
    "recipes",
    "fs",
    "readxl"
  )
  
  pkg_catalag <- pkg_check(packages)
}
required_packages()
