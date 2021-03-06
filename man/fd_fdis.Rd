% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fd_fdis.R
\name{fd_fdis}
\alias{fd_fdis}
\title{Compute Functional Dispersion (FDis)}
\usage{
fd_fdis(traits, sp_com)
}
\arguments{
\item{traits}{The matrix dataset for which you want to compute the index}

\item{sp_com}{Site-species matrix with sites as rows and species as columns
if not provided, the function considers all species with equal
abundance in a single site. This can be either a \code{matrix},
a \code{data.frame}, or a \code{\link[Matrix:Matrix]{Matrix::Matrix()}} object.}
}
\value{
a data.frame with two columns:
\itemize{
\item \code{site} the names of the sites as the row names of the input \code{sp_com},
\item \code{FDis} the values of functional dispersion at each site.
}
}
\description{
Compute Functional Dispersion (FDis)
}
\section{Parallelization}{

The computation of this function can be parallelized thanks to
\code{\link[future:plan]{future::plan()}}. To get more information on how to parallelize your
computation please refer to the parallelization vignette with:
\code{vignette("parallel", package = "fundiversity")}
}

\examples{
data(traits_birds)
data(site_sp_birds)
fd_fdis(traits_birds, site_sp_birds)

}
\references{
Laliberté, E., & Legendre, P. (2010). A distance-based framework for
measuring functional diversity from multiple traits. Ecology, 91(1),
299–305. \doi{10.1890/08-2244.1}
}
