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
#' \link{series_range}
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
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{BRSPackage}
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
