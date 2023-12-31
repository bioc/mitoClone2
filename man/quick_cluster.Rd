% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{quick_cluster}
\alias{quick_cluster}
\title{Quick clustering of mutations}
\usage{
quick_cluster(mutcalls, binarize = FALSE, drop_empty = TRUE, ...)
}
\arguments{
\item{mutcalls}{object of class \code{\link{mutationCalls}}.}

\item{binarize}{If \code{FALSE}, will use raw allele frequencies for
the clustering. If \code{TRUE}, will use binarized
mutation/reference/dropout calls.}

\item{drop_empty}{Remove all rows in the provided mutcalls object
where no cells exhibit a mutation.}

\item{...}{Parameters passed to \code{\link[pheatmap]{pheatmap}}}
}
\value{
The result of running \code{\link[pheatmap]{pheatmap}}
}
\description{
Performs a quick hierarchical clustering on a object of class
\code{\link{mutationCalls}}. See \code{\link{varCluster}} for an
alternative that infers mutational trees and uses sound models of
dropout.
}
\examples{
load(system.file("extdata/LudwigFig7.Rda",package = "mitoClone2"))
quickCluster <- quick_cluster(LudwigFig7)
}
