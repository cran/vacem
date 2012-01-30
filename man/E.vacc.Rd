\name{E.vacc}
\alias{E.vacc}
\title{Calculates the expected number of vaccinations for individuals.}
\usage{E.vacc(z, w, v, N, alpha, rho, log=FALSE, cond.on.accessible=FALSE)}
\description{Calculates the expected number of vaccinations for individuals.}
\details{The @c E.vacc function complements the probability calculation @c g and
computes the expected vaccination count that an individual would have
received during a specified set of vaccination activities.  The vaccination
activities are described by inputs @p v and @p N; @p v provides the number
of doses distributed and @p N provides the target population size for each
activity.  An individual's probability is determined by inputs @p z and @p w;
@p z indicates which activities the individual is eligible for and @p w
provides the pseudo-campaign weighting that specifies the probability of
child receiving a routine vaccination each year.  Finally, the scalar
parameters, @p alpha and @p rho, quantify campaign efficiency and the size
of accessible population, respectively.}
\note{The inefficiency measure @p alpha is defined as the natural log of psi,
i.e. @code{psi = e^alpha}.  @code{psi = 0} (@code{alpha = -inf})
represents perfect efficiency, i.e. when every dose results in an
additional vaccinee.  @code{psi = 1} (@code{alpha = 0}) represents
random efficiency, i.e. when probability of any dose resulting in an
additional vaccinee is independent of receiving a dose previously
during the same campaign.}
\value{the expected number of vaccinations for an individual with
eligibility vector @p z and weight vector @p w during the
campaigns described by @p v and @p N}
\arguments{\item{z}{the eligibility vector for the individual, i.e. @code{z[j] = 1}
if this individual is eligible for campaign @c j, otherwise
@code{z[j] = 0}}
\item{w}{the weight vector for the individual, i.e. @code{ w[k] } gives
the probability of the individual receiving the routine
vaccination in year @c k}
\item{v}{the doses vector providing the number of vaccine doses nominally
distributed in each campaign}
\item{N}{the population size vector specifying the number of people in
the target age range for each campaign}
\item{alpha}{the vaccination efficiency parameter (scalar) for the campaign;
@code{alpha = -inf} implies perfect efficiency,
@code{alpha = 0} implies random efficiency; see note above}
\item{rho}{the proportion of the population (scalar) that can be vaccinated,
i.e @code{1 - rho} is the @e inaccessible portion of the
general population.}
\item{log}{a flag indicating whether the log probability should be
returned; the default is @c FALSE
<i><b>NOTE: the @c log parameter is @b not currently used.</b></i>}
\item{cond.on.accessible}{a flag indicating whether the return value
should be conditioned on the individual's inclusion in the
accessible population, i.e. @p rho; the default is @c FALSE}}
\examples{E.vacc( z = c(0,1), w = c(0.5,0.5), v = c(500,500), N = c(1000,1000), alpha = 0, rho = 0.9 )}
