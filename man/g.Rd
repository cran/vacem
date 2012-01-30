\name{g}
\alias{g}
\title{Calculates the vaccination probability for individuals.}
\usage{g(z, w, v, N, alpha, rho, log=FALSE)}
\description{Calculates the vaccination probability for individuals.}
\details{The @c g function is used to calculate the probability that an individual
has been vaccinated during a set of vaccination activities.  The vaccination
activities are described by inputs @p v and @p N; @p v specifies the number
of doses distributed and @p N specifies the target population size for each
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
\value{the probability of vaccination for an individual with eligibility
vector @p z and weight vector @p w during the campaigns described
by @p v and @p N}
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
returned; the default is @c FALSE}}
\examples{g( z = c(0,1), w = c(0.5,0.5), v = c(500,500), N = c(1000,1000), alpha = 0, rho = 0.9 )}
