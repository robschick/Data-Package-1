# Muser-BRS-Project-Repo

## Installation
Type "R CMD INSTALL BRSPackage_1.0.tar.gz" in the terminal.

## Overview
This package contains data from controlled exposure events (CEEs) from 2019 on Cuvier's beaked whales (Ziphius cavirostris) and long-finned pilot whales (Globicephala melas). There were 4 CEEs - two in the spring, two in the summer. They were all scaled source exposures, and the summary of the CEE metadata are shown in the cee data frame.

## Dataframes
This package provides the following data tables: 
* cee
* cee19_01
* cee19_02
* cee19_03
* cee19_04
* locations
* series
* series_xts
* series_range
* processed_locations
* raw_aux
* raw_gonio
* processed_gonio_aux_locs

### Raw Data
* locations: 
* series: depth data
* series_range: 
* raw_aux: 
* raw_gonio: 

### Processing Steps
The processing steps include the following dataframes:

* series_xts
* processed_locations
* processed_gonio_aux_locs

We also processed the gonio merge file and grouped each deployID within 2 minutes, and chose the row with the lowest strength_db. We also created a new column for distance based on the strength_db, using the upper range. We merged the gonio and the aux data using the crawl function, and finally, we merged it with the locations data. We processed the data by creating dataframes for the series data showing depths, depth bins, and the locations data. We prepared the series_xts dataframe, which consists of the series data prepared for the dygraph. We temporally intersected the deployment locations with the locations data to remove any locations reported by the tag before it was actually on the whale.


### Final Processed Data
* cee
* cee19_01
* cee19_02
* cee19_03
* cee19_04
* series_xts

We intersected the cee metadata with the dataframe containing locations, gonio, and aux. We created a function to create this intersection with all cees. 