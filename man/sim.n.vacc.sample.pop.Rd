\name{sim.n.vacc.sample.pop}
\alias{sim.n.vacc.sample.pop}
\title{Calculates the number of vaccinations each member of a sample population...}
\usage{sim.n.vacc.sample.pop(obs, camps, rho, alpha, cond.on.accessible=FALSE,
    z, w, cdf.fun, ...)}
\description{Calculates the number of vaccinations each member of a sample population
would receive based upon probabilities generated from the campaigns
descriptions and provided the @p rho and @p alpha values.}
\details{TBD: Add details}
\note{The inefficiency measure @p alpha is defined as the natural log of psi,
i.e. @code{psi = e^alpha}.  @code{psi = 0} (@code{alpha = -inf})
represents perfect efficiency, i.e. when every dose results in an
additional vaccinee.  @code{psi = 1} (@code{alpha = 0}) represents
random efficiency, i.e. when probability of any dose resulting in an
additional vaccinee is independent of receiving a dose previously
during the same campaign.}
\value{a vector containing the number of vaccinations each individual
in observation set, @p obs, would have received

@see z.matrix
@see w.matrix
@see nine.month.pointmass
@see constant.post.9mo
@see get.win.smooth.expected.mcmcres
@see get.win.smooth.thresh.mcmcres}
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
\item{cond.on.accessible}{a flag indicating whether the probabilities
should be conditioned on the individual's inclusion in the
accessible population, i.e. @p rho; the default is @c FALSE}
\item{z}{the eligibility matrix for each individual/campaign pairing,
i.e. @code{z[i,j] = 1} if this individual @c i is eligible
for campaign @c j, otherwise @code{z[i,j] = 0};
<i>Note: if @c z is @c NULL, then the eligibilty matrix
is calculated from @p obs and @p camps parameters using
@code{ z.matrix } function.</i>}
\item{w}{the weight matrix for each individual/campaign pairing, i.e.
@code{ w[i,k] } gives the probability of individual @c i
receiving a routine vaccination in year @c k
<i>Note: if @c w is @c NULL, then the weight matrix is
calculated from @p obs, @p camps, @p cdf.fun and @p ...
parameters using @code{ w.matrix } function.</i>}
\item{cdf.fun}{a cumulative distribution function (CDF) used to
calculate the probability of routine vaccination based
upon age, e.g. @code{ constant.post.9mo }.
<i>Note: this parameter is only required if the weight
matrix, @p w, is <u>not</u> provided.</i>}
\item{...}{any additional arguments to the @p cdf.fun, e.g. @c lambda
<i>Note: this parameter is only required if the weight
matrix, @p w, is not provided.</i>}}
\examples{N <- 100
dates <- as.Date( c( "2005-05-01", "2007-07-02", "2009-09-03" ) )
sample.obs   <- make.sample.pop( N=N, age.low=0, age.high=25,
date=array(dates,dim=N) )
sample.camps <- data.frame( date=(dates - 3*DAYS.PER.MONTH),
N=(0.5*N), v=(0.5*N),
age.low=8, age.high=20, is.SIA=1 )

sim.n.vacc.sample.pop( sample.obs, sample.camps, rho=0.9, alpha=0,
cdf.fun=nine.month.pointmass )}
