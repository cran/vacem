\name{get.E.vacc}
\alias{get.E.vacc}
\title{Calculates the expected number of vaccinations for all individuals...}
\usage{get.E.vacc(obs, camps, trans.rho, alpha, z, w, cdf.fun,
    cond.on.accessible=FALSE, ...)}
\description{Calculates the expected number of vaccinations for all individuals
in a group of observations and under a described set of vaccination
activities (e.g. campaigns).}
\details{The @c get.E.vacc function simply applies the @code{ E.vacc } function
to all the entries in observations data frame, @p obs.  The @p obs
argument should contain the immunization information as derived, for
example, from a Demographic and Health Survey (DHS).  The @c get.E.vacc
function uses the observations and vaccination activity descriptions,
@p camps, to calculate the eligibility matrix, @code{ z.matrix } and
the weight matrix @code{ w.matrix } if not provided.  Then the expected
vaccination doses are calculated by calling @c E.vacc with each
individual's eligibility and weight vector as well as the relevant
vaccination activity information (i.e. @p camps$N and @p camps$v),
the efficiency parameter (@p alpha), the accessibility multiplier
(@c rho) and conditionality flag (@p cond.on.accessible).}
\note{The @p trans.rho argument represents the @link{logit} of @c rho,
i.e. @code{ trans.rho = log( rho / (1-rho) ) }, where @c rho is
the proportion of population that is accessible to any vaccination
activity and @code{ 1-rho } the inaccessible portion.  It follows
then that @c rho is calculated as the inverse-logit (or logistic
function) of @p trans.rho, that is:
@code{ rho <- exp( trans.rho ) / ( 1 + exp(trans.rho) ) }}
\note{The inefficiency measure @p alpha is defined as the natural log of psi,
i.e. @code{psi = e^alpha}.  @code{psi = 0} (@code{alpha = -inf})
represents perfect efficiency, i.e. when every dose results in an
additional vaccinee.  @code{psi = 1} (@code{alpha = 0}) represents
random efficiency, i.e. when probability of any dose resulting in an
additional vaccinee is independent of receiving a dose previously
during the same campaign.}
\value{a vector containing the expected number of vaccinations for each
individual in observations data frame, @p obs.

@see E.vacc
@see z.matrix
@see w.matrix
@see nine.month.pointmass
@see constant.post.9mo}
\arguments{\item{obs}{a data frame with one row per observation and columns for
@c date of observation and @c age of individual on that date;
<i>Note: all ages should be in months</i>}
\item{camps}{a data frame with one row per activity and columns providing
the activity's @c date, targeted age range (@c age.low and
@c age.high), size of targeted population (@c N) and the
number of vaccine doses nominally distributed (@c v)}
\item{trans.rho}{the log-odds (aka logit) of @c rho, the proportion
of the population (scalar) that can be vaccinated;
see note above}
\item{alpha}{the vaccination efficiency parameter (scalar) for the campaign;
@code{alpha = -inf} implies perfect efficiency,
@code{alpha = 0} implies random efficiency;
see note above}
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
\item{cond.on.accessible}{a flag indicating whether the return values
should be conditioned on the individual's inclusion in the
accessible population, i.e. @p rho; the default is @c FALSE}
\item{...}{any additional arguments to the @p cdf.fun, e.g. @c lambda
<i>Note: this parameter is only required if the weight
matrix, @p w, is not provided.</i>}}
