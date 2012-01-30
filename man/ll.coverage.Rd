\name{ll.coverage}
\alias{ll.coverage}
\title{Gets the log likelihood of a set of observations.}
\usage{ll.coverage(rho, alpha, obs, campaigns, z, w, cdf.fun, ...)}
\description{Gets the log likelihood of a set of observations.}
\value{the log likelihood of the observations given the parameters}
\arguments{\item{rho}{the rho parameter}
\item{alpha}{the alpha parameter}
\item{obs}{the observations. Must have columns y, date, age}
\item{campaigns}{campaign definitions. Must have columns date, v, N,
age.low, age.high}
\item{z}{the z matrix. calculated if null}
\item{w}{the w matrix. calculated if null}
\item{cdf.fun}{the cdf function used to calculate the w.matrix,
not needed if w is provided.
This is large F in paper eq. 7,8}
\item{...}{additional arguments to cdf.fun}}
