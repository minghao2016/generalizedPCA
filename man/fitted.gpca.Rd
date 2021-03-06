% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generalizedPCA.R
\name{fitted.gpca}
\alias{fitted.gpca}
\title{Fitted values using generalized PCA}
\usage{
\method{fitted}{gpca}(object, type = c("link", "response"), ...)
}
\arguments{
\item{object}{generalized PCA object}

\item{type}{the type of fitting required. \code{type = "link"} gives output on the natural
parameter scale and \code{type = "response"} gives output on the response scale}

\item{...}{Additional arguments}
}
\description{
Fit a lower dimentional representation of the exponential family matrix using generalized PCA
}
\examples{
# construct a low rank matrix in the natural parameter space
rows = 100
cols = 10
set.seed(1)
mat_np = outer(rnorm(rows), rnorm(cols))

# generate a count matrix
mat = matrix(rpois(rows * cols, c(exp(mat_np))), rows, cols)

# run Poisson PCA on it
gpca = generalizedPCA(mat, k = 1, M = 4, family = "poisson")

# construct fitted expected value of counts matrix
fit = fitted(gpca, type = "response")
}

