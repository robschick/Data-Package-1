#' BRSPackage
#' A data package for BRSPackage.
#' @docType package
#' @aliases BRSPackage-package
#' @title Package Title
#' @name BRSPackage
#' @description A description of the data package
#' @details Use \code{data(package='BRSPackage')$results[, 3]} to see a list of available data sets in this data package
#'     and/or DataPackageR::load_all
#' _datasets() to load them.
#' @seealso
#' NA
#' \link{BRSPackage}
NULL


#' Detailed description of the data
#' @name locations
#' @docType data
#' @title Location of different whales
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{Ptt}{}
#' \item{Instr}{}
#' \item{Date}{}
#' \item{Type}{}
#' \item{Quality}{}
#' \item{Latitude}{}
#' \item{Longitude}{}
#' \item{Error.radius}{}
#' \item{Error.Semi.major.axis}{}
#' \item{Error.Semi.minor.axis}{}
#' \item{Error.Ellipse.orientation}{}
#' \item{Offset}{}
#' \item{Offset.orientation}{}
#' \item{GPE.MSD}{}
#' \item{GPE.U}{}
#' \item{Count}{}
#' \item{Comment}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name series
#' @docType data
#' @title Dive data of whales
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{Ptt}{}
#' \item{DepthSensor}{}
#' \item{Source}{}
#' \item{Instr}{}
#' \item{Day}{}
#' \item{Time}{}
#' \item{LocationQuality}{}
#' \item{Latitude}{}
#' \item{Longitude}{}
#' \item{Depth}{}
#' \item{DRange}{}
#' \item{Temperature}{}
#' \item{TRange}{}
#' \item{Activity}{}
#' \item{ARange}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name series_xts
#' @docType data
#' @title Descriptive data title
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{start_date}{}
#' \item{end_date}{}
#' \item{num_fixes}{}
#' \item{date_range}{}
#' \item{average_locs}{}
#' \item{series_start_date}{}
#' \item{series_end_date}{}
#' \item{series_date_range}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name series_range
#' @docType data
#' @title Depth bins of whales
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{Ptt}{}
#' \item{DepthSensor}{}
#' \item{Source}{}
#' \item{Instr}{}
#' \item{Count}{}
#' \item{Start}{}
#' \item{End}{}
#' \item{MinDepth}{}
#' \item{MinDepthAccuracy}{}
#' \item{MaxDepth}{}
#' \item{MaxDepthAccuracy}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name locations_intersect
#' @docType data
#' @title Descriptive data title
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{start_date}{}
#' \item{end_date}{}
#' \item{num_fixes}{}
#' \item{date_range}{}
#' \item{average_locs}{}
#' \item{series_start_date}{}
#' \item{series_end_date}{}
#' \item{series_date_range}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from________________________.
#' @seealso
NULL

#' Detailed description of the data
#' @name aux
#' @docType data
#' @title Auxiliary data from user observations
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{Tag}{}
#' \item{Date}{}
#' \item{Time}{}
#' \item{Lat}{}
#' \item{Long}{}
#' \item{DataSource}{}
#' \item{Vessel}{}
#' \item{Category}{}
#' \item{Error_in_m}{}
#' \item{SightingNo}{}
#' \item{Comments}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name gonio
#' @docType data
#' @title Data from the goniometer
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{hex{}
#' \item{date}{}
#' \item{datenum}{}
#' \item{gonio_bearing_deg}{}
#' \item{strength_db}{}
#' \item{platform}{}
#' \item{ptt}{}
#' \item{DeployID}{}
#' \item{lon}{}
#' \item{lat}{}
#' \item{boat_bearing_deg}{}
#' \item{boat_speed_kph}{}
#' \item{gps_gonio_time_difference_s}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name gonio_out
#' @docType data
#' @title Collapsed gonio data
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{date_time}{}
#' \item{lat}{}
#' \item{lon}{}
#' \item{platform}{}
#' \item{distance}{}
#' \item{Quality}{}
#' \item{Source}{}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name processed_gonio_aux_locs
#' @docType data
#' @title Descriptive data title
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{start_date}{}
#' \item{end_date}{}
#' \item{num_fixes}{}
#' \item{date_range}{}
#' \item{average_locs}{}
#' \item{series_start_date}{}
#' \item{series_end_date}{}
#' \item{series_date_range}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from________________________.
#' @seealso
NULL

#' Detailed description of the data
#' @name cee19_01
#' @docType data
#' @title A summary of the individuals exposed to the first CEE
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{The ID identifying an individual whale.}
#' \item{start_date}{The date of the first observation from an individual whale.}
#' \item{end_date}{The date of the last observation from an individual whale.}
#' \item{num_fixes}{The total number of observations or rows for an individual whale.}
#' \item{date_range}{The number of days from the start date to the end date.}
#' \item{average_locs}{The average number of satellite observations per day.}
#' \item{series_start_date}{The date of the first observation from an individual whale's dive data.}
#' \item{series_end_date}{The date of the last observation from an individual whale's dive data.}
#' \item{series_date_range}{The number of days from the series start date to the series end date.}
#' \item{aux}{The number of observations from auxiliary data.}
#' \item{gonio}{The number of observations from the goniometer.}
#' \item{locations}{The number of observations from the satellite.}
#' \item{num_before_cee}{The total number of observations from before the first CEE.}
#' \item{num_after_cee}{The total number of observations from after the first CEE.}
#' }
#' @source The data comes from the 2019 Atlantic BRS study.
#' @seealso
NULL

