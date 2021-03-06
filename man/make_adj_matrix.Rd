% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_adj_matrix.R
\name{make_adj_matrix}
\alias{make_adj_matrix}
\title{Create adjacency matrix.}
\usage{
make_adj_matrix(N, model, seed = NULL)
}
\arguments{
\item{N}{number of units.}

\item{model}{string specifying the type of network. Options are
\code{'sq_lattice'} for a circular lattice, \code{'scale_free'} for a scale free
network with no isolates according to the Barabasi-Albert model,
\code{'small_world'} for a network with no isolates according to the
Watts-Strogatz small-world model, \code{'dcbm'} for a network according to the
degree corrected stochastic block model.}

\item{seed}{random number for result replicability.}
}
\value{
An \code{N} \eqn{*} \code{N} numeric matrix, where \code{N} corresponds to number of units.
}
\description{
Undirected adjacency matrix of selected networks.
}
\examples{
make_adj_matrix(N = 9, model = 'sq_lattice')
\dontrun{make_adj_matrix(N = 10, model = 'sq_lattice')}
make_adj_matrix(N = 10, model = 'small_world', seed = 357)
}
