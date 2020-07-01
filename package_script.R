library(DataPackageR)

# In this example, I’ll tidy the cars data set by giving it more meaningful column names. 
# The original data set has columns speed and dist. 
# We’ll be more verbose and rename them to speed_mph and stopping_distance.
# 
# An outline of the steps involved.
# 1. Create a package directory structure. (DataPackageR::datapackage_skeleton())
# 2. We add a raw data set. (DataPackageR::use_raw_dataset())
# 3. We add a processing script to process cars into tidy_cars. (DataPackageR::use_processing_script())
# 4. We define the tidy data object (named tidy_cars) that will be stored in our data package. (DataPackageR::use_data_object())

path <- '/cloud/project/Test2'

# 1. Create a package directory structure
datapackage_skeleton(name = "BRSPackage",
                     path = path,
                     force = TRUE,
                     raw_data_dir = '/cloud/project/data/raw_data')



# 2. Add raw data to the package. (not necessary because of raw_data_dir argument in datapackage_skeleton)

# write our raw data to a csv
#write.csv(x = locations,file = file.path('/cloud',"Locations.csv"),row.names = FALSE)

# this works because we called datapackage_skeleton() first.
# use_raw_dataset() moves the file or path in its argument into inst/extdata under the 
# data package source tree. This raw (usually non-tidy) data will be installed with the data pacakge.

# use_raw_dataset(DataPackageR::project_extdata_path("All_Locations.csv"))


# 3. Add a data processing script. Edit your processing script (in Rmd file)
# use_processing_script(file = "locations.Rmd",
#                       author = "Jennifer Schultz",
#                       title = "Process all locations.",
#                       overwrite = TRUE)

#use_processing_script(file = "/cloud/project/data/raw_data/locations.Rmd",
                      #overwrite = TRUE)

# use_processing_script(system.file("extdata", 
#                                   "tests",
#                                   "subsetCars.Rmd",
#                                   package = "DataPackageR"))

# 4. Let DataPackageR know about the data objects to store in the package.
#use_data_object("locations")

# Build the package (for the first time).
#options("DataPackageR_interact" = FALSE)
#package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)



# Series

# 3. Add a data processing script. Edit your processing script (in Rmd file)
#use_processing_script(file = "series.Rmd",
                      #author = "Larry Zheng",
                      #title = "Raw series.",
                      #overwrite = TRUE)

# 4. Let DataPackageR know about the data objects to store in the package.
#use_data_object("series")


# Build the package.
#options("DataPackageR_interact" = FALSE)
#package_build(packageName = '/cloud/project/Test/BRSPackage', install = FALSE)



# Series Range

# 3. Add a data processing script. Edit your processing script (in Rmd file)
#use_processing_script(file = "series_range.Rmd",
                      #author = "Larry Zheng",
                      #title = "Raw series range.",
                      #overwrite = TRUE)

# 4. Let DataPackageR know about the data objects to store in the package.
#use_data_object("series_range")


# Build the package.
#options("DataPackageR_interact" = FALSE)
#package_build(packageName = '/cloud/project/Test/BRSPackage', install = FALSE)


# CEE Metadata

# 3. Add a data processing script. Edit your processing script (in Rmd file)
#use_processing_script(file = "cee",
                      #author = "Larry Zheng",
                      #title = "Raw CEE.",
                      #overwrite = TRUE)

# 4. Let DataPackageR know about the data objects to store in the package.
#use_data_object("cee")


# Build the package.
#options("DataPackageR_interact" = FALSE)
#package_build(packageName = '/cloud/project/Test/BRSPackage', install = FALSE)



# Locations Intersected with Deployment

# 3. Add a data processing script. Edit your processing script (in Rmd file)
#use_processing_script(file = "locations_intersect.Rmd",
                      #author = "Larry Zheng",
                      #title = "Locations Intersected with Deployment.",
                      #overwrite = TRUE)

# 4. Let DataPackageR know about the data objects to store in the package.
#use_data_object("locations_intersect")


# Build the package.
#options("DataPackageR_interact" = FALSE)
#package_build(packageName = '/cloud/project/Test/BRSPackage', install = FALSE)





# function to process and include multiple dataframes in package
package_function <- function(rmd_path, dataframe_to_store) {
  use_processing_script(file = rmd_path,
                        overwrite = TRUE)
  
  # 4. Let DataPackageR know about the data objects to store in the package.
  use_data_object(dataframe_to_store)
  
  # Build the package.
  options("DataPackageR_interact" = FALSE)
  package_build(packageName = paste(path, '/BRSPackage', sep = ""), install = FALSE)
}

# package_function("/cloud/project/data/raw_data/locations.Rmd", "locations")
# package_function("/cloud/project/data/raw_data/series.Rmd", "series")
# package_function("/cloud/project/data/raw_data/series_range.Rmd", "series_range")
# package_function("/cloud/project/data/raw_data/locations_intersect.Rmd", "locations_intersect")
# package_function("/cloud/project/data/raw_data/cee.Rmd", "cee")

paths <- c("/cloud/project/data/raw_data/locations.Rmd",
           "/cloud/project/data/raw_data/series.Rmd", 
           "/cloud/project/data/raw_data/series_range.Rmd",
           "/cloud/project/data/raw_data/locations_intersect.Rmd",
           "/cloud/project/data/raw_data/cee.Rmd")
dataframes <- c("locations",
                "series",
                "series_range",
                "locations_intersect",
                "cee") 

for (i in length(paths)) {
  package_function(paths[i], dataframes[i])
}


# Edit the data set documentation: edit the documentation.R file under data-raw
# ensure we run document() from the DataPackageR namespace and not document() from roxygen or devtools.
#package_path <- file.path(tempdir(),"TidyCars"))
#DataPackageR::document(package_path)



# Iterate: add more data sets (make into function?)

# Final build: rebuild the package one last time.
#package_build(file.path(tempdir(),"Tidycars"))

