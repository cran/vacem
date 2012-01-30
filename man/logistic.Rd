\name{logistic}
\alias{logistic}
\title{Defines a simple logistic function, @f$ e^x / (1 + e^x) @f$.}
\usage{logistic(x)}
\description{Defines a simple logistic function, @f$ e^x / (1 + e^x) @f$.}
\details{The logistic function is used repeatedly in the coverage analysis
so it defined here to improve the readability of those calculations.}
\value{@code{ exp(x) / (1 + exp(x)) }}
\references{\url{ http://en.wikipedia.org/wiki/Logistic_function }}
\arguments{\item{x}{the variable to calculate the logistic function for}}
\examples{x <- c( -10:-2, seq(-2,2,0.2), 2:10 )
plot( x=x, y=logistic(x) )}
