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
#' @name gonio
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

