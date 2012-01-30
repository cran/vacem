\name{z.matrix}
\alias{z.matrix}
\title{Creates an eligibility matrix, i...}
\usage{z.matrix(obs, campaigns)}
\description{Creates an eligibility matrix, i.e. a @c z matrix, from immunization
information for a set of individuals, e.g. observations derived from
a Demographic and Health Survey (DHS), and a set of vaccination
activity descriptions (e.g. campaigns).}
\details{The @c z.matrix function loops through all the provided observations
and campaigns.  For each pairing, it is first determined if the
campaign occurred before or after the observation (survey) date.  If
the vaccination campaign was after the observation date, then the
individual's eligibility status is set to zero (0).  Otherwise, if
the campaign was completed before survey, then the eligibility status
is based on age.  If the individual's age, at the time of the campaign,
was within age range, @code{[age.low, age.high]}, of the immunization
activity's target population, then eligibility is set to one (1).  If
the individual's age was not within the target age range, then
eligibility is zero (0).}
\note{The @c z.matrix function only considers campaigns, i.e. Supplemental
Immunization Activities (SIAs).  For non-SIA immunization activities,
e.g. routine vaccinations, the eligibility status is always set to
zero (0).}
\note{All vaccination activities are assumed to have been completed on
the date provided (i.e. @p campaigns$date); separate start and
end dates are not supported.}
\value{a matrix with one row per observation and one column per campaign;
matrix cells contain a @c 1 if that individual was eligible for
the campaign and @c 0 otherwise}
\arguments{\item{obs}{a data frame with one row per observation and columns for
@c date of observation and @c age of individual on that date;
<i>Note: all ages should be in months</i>}
\item{campaigns}{a data frame with one row per activity and columns
providing the activity's @c date and targeted age range,
i.e. @c age.low and @c age.high}}
