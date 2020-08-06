library(DataPackageR)
library(devtools)

# Testing the use of the BRS data package

# Install data package
devtools::install_github("larryzheng0/BRSPackage")

# Install from command line: R CMD INSTALL BRSPackage_1.0.tar.gz

library(BRSPackage)

cee
processed_gonio_aux_locs
cee19_04
