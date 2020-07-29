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
#' \item{DeployID}{The ID identifying an individual whale.}
#' \item{Ptt}{The number identifying an individual whale.}
#' \item{Instr}{Instrument used to identify an individual whale.}
#' \item{Date}{The date of the first observation from an individual whale.}
#' \item{Type}{Satellite used for an observation.}
#' \item{Quality}{The category based on the magnitude of error of an observation.}
#' \item{Latitude}{The latitude where an individual whale was observed.}
#' \item{Longitude}{The longitude where an individual whale was observed.}
#' \item{Error.radius}{The radius error of an individual observation.}
#' \item{Error.Semi.major.axis}{The semi major axis error of an individual observation.}
#' \item{Error.Semi.minor.axis}{The semi minor axis error of an individual obseravtion.}
#' \item{Error.Ellipse.orientation}{The ellipse orientation error of an individual observation.}
#' \item{Offset}{N/A}
#' \item{Offset.orientation}{N/A}
#' \item{GPE.MSD}{N/A}
#' \item{GPE.U}{N/A}
#' \item{Count}{N/A}
#' \item{Comment}{N/A}
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
#' \item{DeployID}{The ID identifying an individual whale.}
#' \item{Ptt}{The number identifying an individual whale.}
#' \item{DepthSensor}{The depth of each observation.}
#' \item{Source}{}
#' \item{Instr}{Instrument used to identify an individual whale.}
#' \item{Day}{The date of the first observation from an individual whale.}
#' \item{Time}{The time of the first observation from an individual whale.}
#' \item{LocationQuality}{N/A}
#' \item{Latitude}{N/A}
#' \item{Longitude}{N/A}
#' \item{Depth}{The depth of each individual observation.}
#' \item{DRange}{The depth range of each individual observation.}
#' \item{Temperature}{N/A}
#' \item{TRange}{N/A}
#' \item{Activity}{N/A}
#' \item{ARange}{N/A}
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
#' \item{DeployID}{The ID identifying an individual whale.}
#' \item{Ptt}{The number identifying an individual whale.}
#' \item{DepthSensor}{The depth of each observation.}
#' \item{Source}{Whether an observation is from locations, auxiliary, or goniometer data.}
#' \item{Instr}{Instrument used to identify an individual whale.}
#' \item{Count}{}
#' \item{Start}{The date of the first observation from an individual whale.}
#' \item{End}{The date of the last observation from an individual whale.}
#' \item{LocationQuality}{N/A}
#' \item{Latitude}{N/A}
#' \item{Longitude}{N/A}
#' \item{MinDepth}{The minimum depth of each observation from an individual whale.}
#' \item{MinDepthAccuracy}{The accuracy of minimum depth of each each observation.}
#' \item{MaxDepth}{The maximum depth of each observation from an individual whale.}
#' \item{MaxDepthAccuracy}{The accuracy of maximum depth of each each observation.}
#' }
#' @source The data comes from the 2019 BRS Study.
#' @seealso
NULL

#' Detailed description of the data
#' @name processed_locations
#' @docType data
#' @title Remove observations of dates before tag was placed on whale
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{DeployID}{The ID identifying an individual whale.}
#' \item{Ptt}{The number identifying an individual whale.}
#' \item{Instr}{Instrument used to identify an individual whale.}
#' \item{Date}{The date of the first observation from an individual whale.}
#' \item{Type}{Satellite used for an observation.}
#' \item{Quality}{The category based on the magnitude of error of an observation.}
#' \item{Latitude}{The latitude where an individual whale was observed.}
#' \item{Longitude}{The longitude where an individual whale was observed.}
#' \item{Error.radius}{The radius error of an individual observation.}
#' \item{Error.Semi.major.axis}{The semi major axis error of an individual observation.}
#' \item{Error.Semi.minor.axis}{The semi minor axis error of an individual obseravtion.}
#' \item{Error.Ellipse.orientation}{The ellipse orientation error of an individual observation.}
#' \item{Offset}{N/A}
#' \item{Offset.orientation}{N/A}
#' \item{GPE.MSD}{N/A}
#' \item{GPE.U}{N/A}
#' \item{Count}{N/A}
#' \item{Comment}{N/A}
#' \item{tag_on}{The date and time the tag was placed on each individual observation.}
#' \item{date_time}{The date and time of the first observation from an individual observation.}
#' }
#' @source The data comes from the 2019 BRS Study.
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
#' \item{DeployID}{The ID identifying an individual whale.}
#' \item{Latitude}{}
#' \item{Longitude}{}
#' \item{Error.Semi.major.axis}{}
#' \item{Error.Semi.minor.axis}{}
#' \item{Quality}{}
#' \item{Source}{Whether an observation is from locations, auxiliary, or goniometer data.}
#' \item{Error.Ellipse.Orientation}{}
#' \item{date_time}{The date and time of an observation.}
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

