% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treat_color_image.R
\name{Grayscale}
\alias{Grayscale}
\title{compute average of RGB channels}
\usage{
Grayscale(imcol)
}
\arguments{
\item{imcol}{a color image of class cimg}
}
\value{
a grayscale image of class cimg
}
\description{
compute average of RGB channels
}
\examples{
Grayscale(boats) \%>\% plot
}
\author{
Shota Ochi
}
