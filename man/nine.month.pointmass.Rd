\name{nine.month.pointmass}
\alias{nine.month.pointmass}
\title{Defines a simple cumulative distribution function (CDF) with...}
\usage{nine.month.pointmass(age)}
\description{Defines a simple cumulative distribution function (CDF) with
a point mass at nine (9) months.}
\details{The cumulative distribution function determines an individual's
probabilty of receiving a routine vaccination.  It is passed
into the weighting calculation function (@code{w.matrix}) by
various coverage analysis functions such as @code{ ll.coverage }
and @code{ mcmc.estimate }.  A user specifies, by name, which
CDF to use when an analysis function is invoked, e.g.
@code{ mcmc.estimate( ..., routine.cdf = "9m.pointmass", ... ) }.
See the documentation for the respective analysis functions for
details about which CDFs are supported.}
\value{zero (0) if \code{ @p age < 9 } and one (1) otherwise

@see w.matrix
@see ll.coverage
@see mcmc.estimate}
\arguments{\item{age}{the age of the individual}}
\examples{x <- 0:24
plot( x=x, y=nine.month.pointmass(x) )}
