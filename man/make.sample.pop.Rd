\name{make.sample.pop}
\alias{make.sample.pop}
\title{Generates a sample survey population with ages uniformly distributed...}
\usage{make.sample.pop(N, age.low, age.high, date)}
\description{Generates a sample survey population with ages uniformly distributed
in the specified range, (@p age.low, @p age.high), and all assigned
the provided observation @p date.}
\note{The lower and upper age limits will not be generated.  This
function uses @code{runif} to generate age values and @c runif
does not generate either extreme unless @code{ low = high }
or @code{ max - min } is small.}
\note{If @p age.high < @p age.low, all generated ages will be @c NaN.}
\value{a @c data.frame with @p N rows and two columns: @c date and
@c age

@see runif}
\arguments{\item{N}{the number of samples, i.e. population size}
\item{age.low}{the minimum age (in months) for the sample population}
\item{age.high}{the maximum age (in months) for the sample population}
\item{date}{the observation date to use for all samples}}
\examples{make.sample.pop( N=10, age.low=0, age.high=25, date="2012-01-01" )

N <- 10
dates <- c( "2005-05-01" ,"2007-07-02", "2009-09-03" )
make.sample.pop( N, 0, 25, array(dates,dim=N) )}
