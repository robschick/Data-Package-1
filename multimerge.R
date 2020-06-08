install.packages("tidyverse")

library(tidyverse)

# Merge all csv files
setwd('data/L1_edited')
filenames <- list.files(full.names=FALSE)

# List of data file types
data_types <- c('All', 'Argos')


for (type in data_types) {

  #Initialize empty list with size = length of filenames
  filepaths <- vector(mode="character", length = length(filenames))
  
  # For each folder, put corresponding dataframe into list
  for (i in 1:length(filenames)) {
    filepaths[i] <- paste('/cloud/project/data/L1_edited/', filenames[i],
                          '/', filenames[i], '-', type, '.csv', sep = "")
  }
  
  
  All <- lapply(filepaths,function(i){
    read.csv(i, header=FALSE, skip=4)
  })
  
  df <- do.call(rbind.data.frame, All)
  write.csv(df, paste(type, ".csv"), row.names=FALSE)

}
