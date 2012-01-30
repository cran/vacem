\name{ll.coverage.optim.const.post.9m}
\alias{ll.coverage.optim.const.post.9m}
\title{Log likelihood for using optim.}
\usage{ll.coverage.optim.const.post.9m(theta, obs, campaigns, z)}
\description{Log likelihood for using optim.}
\details{Assumes that there  there is a constant vaccination rate after 9 months
of age}
\value{the log likelihood}
\arguments{\item{theta}{the parameter vector (trans.rho, alpha, lambda),
where rho = exp(trans.rho)/(1+exp(trans.rho))}
\item{obs}{the observations}
\item{campaigns}{the campaigns}
\item{z}{the z matrix}}
