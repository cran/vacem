\name{w.matrix}
\alias{w.matrix}
\title{Creates a weight matrix from (1) immunization information for a set...}
\usage{w.matrix(obs, activities, cdf.fun, ...)}
\description{Creates a weight matrix from (1) immunization information for a set
of individuals, e.g. observations derived from a Demographic and
Health Survey (DHS), (2) a set of vaccination activity descriptions,
and (3) a cumulative distribution function (CDF).}
\details{The @c w.matrix function loops through all the provided activities
and determines weights for all observations.  These weights give the
probability of an individual having the "opportunity" to be vaccinated
during a year's routine activities.}
\note{For all Supplemental Immunization Activities (SIAs), i.e. campaigns,
the routine vaccination opportunity weight defaults to zero (0).

For each routine vaccination activity, the opportunity weight is based
on the individual's age at the start of the activity and the length of
exposure to that year's activity (12 months most years, but truncated
in the survey year).  Specifically, the weight is calculated as:
@f[ cdf.fun( xij + lj ) - cdf.fun( xij ) @f]
where @c xij is the age of individual @c i at the start of year @c j
and @c lj is the length of exposure to routine vaccination in year @c j.

For length of the exposure to the routine vaccination, @c lj, there
are three possible cases:
@li{ a. if survey date is before activity year, then the individual
is not "exposed" to this routine vaccination and hence
@f$ lj = 0 months @f$ }
@li{ b. if survey date is during activity year, then the individual
is "exposed" only up until the observation date and hence
@f$ lj = (obs$date - activities$date) @f$ }
@li{ c. if survey date is after activity year, then the individual
is "exposed" to this routine vaccination for the entire year
and hence @f$ lj == 12 months @f$ }}
\note{For routine vaccinations, the date provided (i.e. @p activities$date)
is used as start of the activity year and hence is typically given
as January 1st of that year, e.g. @c 2012-01-01.}
\value{a matrix with one row per observation and one column per activity;
matrix cells contain an "opportunity" weight which is 0 for SIA
campaigns and calculated as using the @p cdf.fun for routine
vaccination activities

@see nine.month.pointmass
@see constant.post.9mo}
\arguments{\item{obs}{a data frame with one row per observation and columns for
date of observation and age of individual on that date;
<i>Note: all ages should be in months</i>}
\item{activities}{a data frame with one row per activity and columns
providing the activity's date and the @c is.SIA flag
indicating whether the activity is a Supplemental
Immunization Activity (SIA) or routine vaccination.}
\item{cdf.fun}{a cumulative distribution function (CDF) used to
calculate the probability of routine vaccination during
each activity as a function of age, e.g.
@code{ constant.post.9mo }.}
\item{...}{additional arguments to the @p cdf.fun, e.g. @c lambda}}
