\name{constant.post.9mo}
\alias{constant.post.9mo}
\title{Defines a simple cumulative distribution function (CDF) with...}
\usage{constant.post.9mo(age, lambda)}
\description{Defines a simple cumulative distribution function (CDF) with
a constant "hazard" rate @p lambda of routine vaccination
starting at age 8.5 months.}
\details{The cumulative distribution function determines an individual's
probabilty of receiving a routine vaccination.  It is passed
into the weighting calculation function (@code{w.matrix}) by
various coverage analysis functions such as @code{ ll.coverage }
and @code{ mcmc.estimate }.  A user specifies, by name, which
CDF to use when an analysis function is invoked, e.g.
@code{ mcmc.estimate( ..., routine.cdf = "const.post.9m", ... ) }.
See the documentation for the respective analysis functions for
details about which CDFs are supported.}
\value{\code{ pexp( @p age - 8.5, @p lambda ) }

@see w.matrix
@see ll.coverage
@see mcmc.estimate}
\arguments{\item{age}{the age of the individual}
\item{lambda}{the routine vaccination "hazard" rate}}
\examples{x <- 0:24 ; lambda <- 0.5
plot( x=x, y=constant.post.9mo(x,lambda) )

x <- 0:24 ; lambda <- seq( 1.0, 0.1, -0.2 )
plot( type="n", x=x, xlab="age", ylab="constant.post.9mo(age,lambda)",
xlim=c(min(x),max(x)), ylim=c(0,1),
xaxp=c(min(x),max(x),(max(x)-min(x))/2) )
legend( "bottomright", "lambda", lambda, inset=0.1,
fill=c(1:length(lambda)) )
for ( i in 1:length(lambda) ) {
lines( x=x, y=constant.post.9mo(x,lambda[i]), col=i )
}}
