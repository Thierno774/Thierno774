# Packages Loading
### install packages 
# check.packages function: install and load multiple R packages.
# Check to see if packages are installed. Install them if they are not, then load them into the R session.
check.packages <- function(pkg){
  options(repos=structure(c(CRAN="http://cloud.r-project.org/")))
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
packages<-c("Seurat", "SeuratData", "devtools")
suppressPackageStartupMessages( check.packages(packages))
#############""" Documentation
devtools::install_github('satijalab/seurat-data')
install.packages("rmarkdown")
install.packages("knitr")
