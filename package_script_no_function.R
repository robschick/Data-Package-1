library(DataPackageR)

# Tidying and packaging BRS data
# 
# An outline of the steps involved.
# 1. Create a package directory structure. (DataPackageR::datapackage_skeleton())
# 2. We add a raw data set. (DataPackageR::use_raw_dataset())
# 3. We add a processing script to process cars into tidy_cars. (DataPackageR::use_processing_script())
# 4. We define the tidy data object (named tidy_cars) that will be stored in our data package. (DataPackageR::use_data_object())

#path <- '/cloud/project/PackageFolder'
path <- '/cloud/project'

# Create a package directory structure
datapackage_skeleton(name = "BRSPackage",
                     path = path,
                     force = TRUE,
                     raw_data_dir = '/cloud/project/data/raw_data')



# LOCATIONS

use_processing_script(file = "/cloud/project/data/raw_data/locations.Rmd",
                      overwrite = TRUE)

# Let DataPackageR know about the data objects to store in the package.
use_data_object("locations")

# Build the package.
options("DataPackageR_interact" = FALSE)
package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)


# SERIES

use_processing_script(file = "/cloud/project/data/raw_data/series.Rmd",
                      overwrite = TRUE)

# Let DataPackageR know about the data objects to store in the package.
use_data_object("series")
use_data_object("series_xts")

# Build the package.
options("DataPackageR_interact" = FALSE)
package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)



# SERIES RANGE

use_processing_script(file = "/cloud/project/data/raw_data/series_range.Rmd",
                      overwrite = TRUE)

# Let DataPackageR know about the data objects to store in the package.
use_data_object("series_range")

# Build the package.
options("DataPackageR_interact" = FALSE)
package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)



# LOCATIONS INTERSECT

use_processing_script(file = "/cloud/project/data/raw_data/locations_intersect.Rmd",
                      overwrite = TRUE)

# Let DataPackageR know about the data objects to store in the package.
use_data_object("processed_locations")

# Build the package.
options("DataPackageR_interact" = FALSE)
package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)



# GONIO AUX LOCS MERGE

use_processing_script(file = "/cloud/project/data/raw_data/Gonio_Aux_Locs_Merge.Rmd",
                      overwrite = TRUE)

# Let DataPackageR know about the data objects to store in the package.
use_data_object("aux")
use_data_object("gonio")
use_data_object("processed_gonio_aux_locs")

# Build the package.
options("DataPackageR_interact" = FALSE)
package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)



# CEE

use_processing_script(file = "/cloud/project/data/raw_data/cee.Rmd",
                      overwrite = TRUE)

# Let DataPackageR know about the data objects to store in the package.
use_data_object("cee19_01")
use_data_object("cee19_02")
use_data_object("cee19_03")
use_data_object("cee19_04")

# Build the package.
options("DataPackageR_interact" = FALSE)
package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)





# Edit the data set documentation: edit the documentation.R file under data-raw
# ensure we run document() from the DataPackageR namespace and not document() from roxygen or devtools.
#package_path <- file.path(tempdir(),"TidyCars"))
new_path <- '/cloud/project/BRSPackage'

DataPackageR::document(new_path)




# Final build: rebuild the package one last time.
#package_build(file.path(tempdir(),"Tidycars"))

