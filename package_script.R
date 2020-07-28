library(DataPackageR)

# Tidying and packaging BRS data
# 
# An outline of the steps involved.
# 1. Create a package directory structure. (DataPackageR::datapackage_skeleton())
# 2. We add a raw data set. (DataPackageR::use_raw_dataset())
# 3. We add a processing script to process cars into tidy_cars. (DataPackageR::use_processing_script())
# 4. We define the tidy data object (named tidy_cars) that will be stored in our data package. (DataPackageR::use_data_object())

path <- '/cloud/project/PackageFolder'

# Create a package directory structure
datapackage_skeleton(name = "BRSPackage",
                     path = path,
                     force = TRUE,
                     raw_data_dir = '/cloud/project/data/raw_data')



# function to process and include multiple dataframes in package
package_function <- function(rmd_path, dataframes_to_store) {
  # Data processing script (load in from rmd_path)
  use_processing_script(file = rmd_path,
                        overwrite = TRUE)
  
  # Let DataPackageR know about the data objects to store in the package.
  for (i in range(length(dataframes_to_store))) {
    use_data_object(dataframes_to_store[i])
  }

  # Build the package.
  options("DataPackageR_interact" = FALSE)
  package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)
}


# paths of Rmd files used to process
paths <- c("/cloud/project/data/raw_data/locations.Rmd",
           "/cloud/project/data/raw_data/series.Rmd", 
           "/cloud/project/data/raw_data/series_range.Rmd",
           "/cloud/project/data/raw_data/locations_intersect.Rmd",
           "/cloud/project/data/raw_data/Gonio_Aux_Locs_Merge.Rmd",
           "/cloud/project/data/raw_data/cee.Rmd")
# names of dataframes to store
dataframes_to_store <- c(c("locations"),
                c("series", "series_xts"),
                c("series_range"),
                c("locations_intersect"),
                c("aux","gonio","processed_gonio_aux_locs"),
                c("cee19_01", "cee19_02", "cee19_03", "cee19_04")) 

# Call function for each Rmd and each dataframe
for (i in length(paths)) {
  package_function(paths[i], dataframes_to_store[i])
}


# Edit the data set documentation: edit the documentation.R file under data-raw
# ensure we run document() from the DataPackageR namespace and not document() from roxygen or devtools.
#package_path <- file.path(tempdir(),"TidyCars"))
DataPackageR::document(path)




# Final build: rebuild the package one last time.
#package_build(file.path(tempdir(),"Tidycars"))

