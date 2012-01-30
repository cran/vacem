\name{ll.coverage.optim}
\alias{ll.coverage.optim}
\title{Log likelihood for using optim.}
\usage{ll.coverage.optim(theta, obs, campaigns, z, cdf.fun, ...)}
\description{Log likelihood for using optim.}
\details{Assumes weight matrix parameter is not being fit.}
\value{the log likelihood}
\arguments{\item{theta}{the parameter vector (trans.rho, alpha),
where rho = exp(trans.rho)/(1+exp(trans.rho))}
\item{obs}{the observations}
\item{campaigns}{the campaigns}
\item{z}{the z matrix}
\item{cdf.fun}{the cdf function}
\item{...}{additional arguments to cdf.fun}}
