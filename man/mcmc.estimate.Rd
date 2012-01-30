\name{mcmc.estimate}
\alias{mcmc.estimate}
\title{Quick and dirty roll your own MCMC for determining the CI for rho...}
\usage{mcmc.estimate(obs, campaigns, keep.from=1, n.iter=1000, n.chains=5,
    trans.rho.start=0.5, alpha.start=0, trans.rho.sd=0.1, alpha.sd=0.1,
    routine.cdf="9m.pointmass", routine.par.start=c(),
    routine.par.sd=rep(0.1, length(routine.par.start)), z,
    plot.as.go=FALSE, plot.freq=10)}
\description{Quick and dirty roll your own MCMC for determining the CI for rho
and alpha.}
\value{matrix of all of the chains for alpha and trans.rho.start}
\arguments{\item{obs}{the number of observations}
\item{campaigns}{TBD}
\item{keep.from}{TBD}
\item{n.iter}{the number of interations to do}
\item{n.chains}{the number of chains to run}
\item{trans.rho.start}{starting point for rho}
\item{alpha.start}{starting point for alpha}
\item{trans.rho.sd}{standard deviation to use for proposal rhos}
\item{alpha.sd}{standard deviation to us for proposal alphas}
\item{routine.cdf}{TBD}
\item{routine.par.start}{TBD}
\item{routine.par.sd}{TBD}
\item{z}{TBD}
\item{plot.as.go}{TBD}
\item{plot.freq}{TBD}}
