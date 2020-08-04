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
#' \link{aux}
#' \link{gonio}
#' \link{processed_gonio_aux_locs}
NULL








#' Detailed description of the data
#' @name cee19_01
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
#' \item{aux}{}
#' \item{gonio}{}
#' \item{locations}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{cee19_02}
#' \link{cee19_03}
#' \link{cee19_04}
NULL








#' Detailed description of the data
#' @name cee19_02
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
#' \item{aux}{}
#' \item{gonio}{}
#' \item{locations}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{cee19_01}
#' \link{cee19_03}
#' \link{cee19_04}
NULL








#' Detailed description of the data
#' @name cee19_03
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
#' \item{aux}{}
#' \item{gonio}{}
#' \item{locations}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{cee19_01}
#' \link{cee19_02}
#' \link{cee19_04}
NULL








#' Detailed description of the data
#' @name cee19_04
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
#' \item{aux}{}
#' \item{gonio}{}
#' \item{locations}{}
#' \item{num_before_cee}{}
#' \item{num_after_cee}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{cee19_01}
#' \link{cee19_02}
#' \link{cee19_03}
NULL








#' Detailed description of the data
#' @name locations
#' @docType data
#' @title Descriptive data title
#' @format a \code{spec_tbl_df} containing the following fields:
#' \describe{
#' \item{X1}{}
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
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
NULL







#' Detailed description of the data
#' @name series
#' @docType data
#' @title Descriptive data title
#' @format a \code{spec_tbl_df} containing the following fields:
#' \describe{
#' \item{X1}{}
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
#' \item{date_time}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{series_xts}
NULL







#' Detailed description of the data
#' @name series_xts
#' @docType data
#' @title Descriptive data title
#' @format a \code{xts} containing the following fields:
#' \describe{
#' \item{depth}{}
#' \item{lower}{}
#' \item{upper}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{series}
NULL






#' Detailed description of the data
#' @name series_range
#' @docType data
#' @title Descriptive data title
#' @format a \code{spec_tbl_df} containing the following fields:
#' \describe{
#' \item{X1}{}
#' \item{DeployID}{}
#' \item{Ptt}{}
#' \item{DepthSensor}{}
#' \item{Source}{}
#' \item{Instr}{}
#' \item{Count}{}
#' \item{Start}{}
#' \item{End}{}
#' \item{LocationQuality}{}
#' \item{Latitude}{}
#' \item{Longitude}{}
#' \item{MinDepth}{}
#' \item{MinDepthAccuracy}{}
#' \item{MaxDepth}{}
#' \item{MaxDepthAccuracy}{}
#' \item{MinTemp}{}
#' \item{MinTempAccuracy}{}
#' \item{MaxTemp}{}
#' \item{MaxTempAccuracy}{}
#' \item{MobMean}{}
#' \item{MobSD}{}
#' \item{ActivitySum}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
NULL





#' Detailed description of the data
#' @name processed_locations
#' @docType data
#' @title Descriptive data title
#' @format a \code{spec_tbl_df} containing the following fields:
#' \describe{
#' \item{X1}{}
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
#' \item{tag_on}{}
#' \item{date_time}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
NULL




#' Detailed description of the data
#' @name aux
#' @docType data
#' @title Descriptive data title
#' @format a \code{tbl_df} containing the following fields:
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
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{gonio}
#' \link{processed_gonio_aux_locs}
NULL




#' Detailed description of the data
#' @name gonio
#' @docType data
#' @title Descriptive data title
#' @format a \code{spec_tbl_df} containing the following fields:
#' \describe{
#' \item{hex}{}
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
#' \item{date_time}{}
#' \item{gap}{}
#' \item{group}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{aux}
#' \link{processed_gonio_aux_locs}
NULL




#' Detailed description of the data
#' @name processed_gonio_aux_locs
#' @docType data
#' @title Descriptive data title
#' @format a \code{grouped_df} containing the following fields:
#' \describe{
#' \item{DeployID}{}
#' \item{Latitude}{}
#' \item{Longitude}{}
#' \item{Error.Semi.major.axis}{}
#' \item{Quality}{}
#' \item{Source}{}
#' \item{Error.Semi.minor.axis}{}
#' \item{Error.Ellipse.orientation}{}
#' \item{date_time}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
#' \link{aux}
#' \link{gonio}
NULL
