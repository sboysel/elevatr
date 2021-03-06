% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_elev_raster.R
\name{get_mapzen_terrain}
\alias{get_mapzen_terrain}
\title{Get a digital elevation model from the Mapzen Terrain Tiles}
\source{
Attribution: Mapzen terrain tiles contain 3DEP, SRTM, and GMTED2010 
        content courtesy of the U.S. Geological Survey and ETOPO1 content 
        courtesy of U.S. National Oceanic and Atmospheric Administration. 
        \url{https://mapzen.com/documentation/terrain-tiles/}
}
\usage{
get_mapzen_terrain(bbx, z, prj, api_key = NULL, expand = NULL, ...)
}
\arguments{
\item{bbx}{a \code{sp::bbox} object that is used to select x,y,z tiles.}

\item{z}{The zoom level to return.  The zoom ranges from 1 to 14.  Resolution
of the resultant raster is determined by the zoom and latitude.  For 
details on zoom and resolution see the documentation from Mapzen at 
\url{https://mapzen.com/documentation/terrain-tiles/data-sources/#what-is-the-ground-resolution}}

\item{prj}{PROJ.4 string for input bbox}

\item{api_key}{An API Key from Mapzen, create at 
\url{https://mapzen.com/developers} Required. Set in your 
\code{.Renviron} file with the variable "mapzen_key"}

\item{expand}{A numeric value of a distance, in map units, used to expand the
bounding box that is used to fetch the terrain tiles. This can 
be used for features that fall close to the edge of a tile and 
additional area around the feature is desired. Default is NULL.}

\item{...}{Extra configuration parameters to be passed to httr::GET.  Common 
usage is to adjust timeout.  This is done as 
\code{config=timeout(x)} where \code{x} is a numeric value in 
seconds.  Multiple configuration functions may be passed as a 
vector.}
}
\description{
This function uses the Mapzen Terrain Tile service to retrieve an elevation
raster from the geotiff service.  It accepts a \code{sp::bbox} object as 
input and returns a single raster object covering that extent.  You should have
an api_key from Mapzen.
}
\keyword{internal}
