\name{vaccinate.sample.pop}
\alias{vaccinate.sample.pop}
\title{Vaccinates a sample population based on probabilities generated from the...}
\usage{vaccinate.sample.pop(obs, camps, rho, alpha, cdf.fun, ...)}
\description{Vaccinates a sample population based on probabilities generated from the
campaigns descriptions and the @p rho and @p alpha values.}
\details{TBD: Add details}
\note{The inefficiency measure @p alpha is defined as the natural log of psi,
i.e. @code{psi = e^alpha}.  @code{psi = 0} (@code{alpha = -inf})
represents perfect efficiency, i.e. when every dose results in an
additional vaccinee.  @code{psi = 1} (@code{alpha = 0}) represents
random efficiency, i.e. when probability of any dose resulting in an
additional vaccinee is independent of receiving a dose previously
during the same campaign.}
\value{a copy of @p obs data frame with two new columns appended:
@c y (vaccination status, i.e. @c 0 or @c 1) and @c p.vac
(vaccination probability)

@see g
@see z.matrix
@see w.matrix
@see nine.month.pointmass
@see constant.post.9mo}
\arguments{\item{obs}{the synthetic population, i.e. a data frame with one row
per observation and columns for @c date of observation
and @c age of individual on that date;
<i>Note: all ages should be in months</i>}
\item{camps}{a data frame with one row per activity and columns providing
the activity's @c date, targeted age range (@c age.low and
@c age.high), size of targeted population (@c N) and the
number of vaccine doses nominally distributed (@c v)}
\item{rho}{the proportion of the population (scalar) that can be vaccinated,
i.e @code{1 - rho} is the @e inaccessible portion of the
general population.}
\item{alpha}{the vaccination efficiency parameter (scalar) for the campaign;
@code{alpha = -inf} implies perfect efficiency,
@code{alpha = 0} implies random efficiency;
see note above}
\item{cdf.fun}{a cumulative distribution function (CDF) used to
calculate the probability of routine vaccination based
upon age, e.g. @code{ constant.post.9mo }.}
\item{...}{any additional arguments to the @p cdf.fun, e.g. @c lambda}}
\examples{N <- 100
dates <- as.Date( c( "2005-05-01", "2007-07-02", "2009-09-03" ) )
sample.obs   <- make.sample.pop( N=N, age.low=0, age.high=25,
date=array(dates,dim=N) )
sample.camps <- data.frame( date=(dates - 3*DAYS.PER.MONTH),
N=(0.5*N), v=(0.5*N),
age.low=8, age.high=20, is.SIA=1 )

vaccinate.sample.pop( sample.obs, sample.camps, rho=0.9, alpha=0,
cdf.fun=nine.month.pointmass )}
