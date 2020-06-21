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


# 1. Create a package directory structure
datapackage_skeleton(name = "BRSPackage",
                     path = tempdir(),
                     force = TRUE,
                     raw_data_dir = '/cloud/project/data/raw_data')


# 2. Add raw data to the package.
# write our raw data to a csv
write.csv(x = cars,file = file.path(tempdir(),"cars.csv"),row.names = FALSE)
# this works because we called datapackage_skeleton() first.
use_raw_dataset(file.path(tempdir(),"cars.csv"))


# 3. Add a data processing script. Edit your processing script (in Rmd file)
use_processing_script(file = "tidy_cars.Rmd",
                      author = "Greg Finak",
                      title = "Process cars into tidy_cars.")

# 4. Let DataPackageR know about the data objects to store in the package.
use_data_object("tidy_cars")




# Build the package (for the first time).
options("DataPackageR_interact" = FALSE)
package_build(packageName = file.path(tempdir(),"TidyCars"), install = FALSE)


# Edit the data set documentation: edit the documentation.R file under data-raw
# ensure we run document() from the DataPackageR namespace and not document() from roxygen or devtools.
package_path <- file.path(tempdir(),"TidyCars")
DataPackageR::document(package_path)



# Iterate: add more data sets (make into function?)

# Final build: rebuild the package one last time.
package_build(file.path(tempdir(),"TidyCars"))
