% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RollingTheft.R
\name{RollingTheft}
\alias{RollingTheft}
\title{RollingTheft Class}
\arguments{
\item{windows}{Vector of windows that will be applied on features.}

\item{workers}{Number of workers. Greater than 1 for parallle processing}

\item{lag}{Lag variable in runner package.}

\item{at}{Argument at in runner package.}

\item{na_pad}{Argument na_pad in runner package.}

\item{simplify}{Argument simplify in runner package.}

\item{features_set}{Argument from the theft package}

\item{data}{X field of Ohlcv object}

\item{window}{window length. This argument is given internaly}

\item{price}{Prcie column in Ohlcv}
}
\value{
A new `RollingTheft` object.

Calculate rolling radf features from theft package.
}
\description{
Function calculates catch 22 features on rolling window.

Create a new RollingExuber object.

Function calculates catch 22 features on rolling window.
}
\section{Fields}{

\describe{
\item{\code{features_set}}{Features from theft package we want to calcualte.}
}}

\examples{
data(spy_hour)
OhlcvInstance = Ohlcv$new(spy_hour, date_col = "datetime")
# catch22 features
RollingTheftInit = RollingTheft$new(windows = 200,
                                    workers = 1L,
                                    at = c(300, 500),
                                    lag = 0L,
                                    na_pad = TRUE,
                                    simplify = FALSE,
                                    features_set = "catch22")
x = RollingTheftInit$get_rolling_features(OhlcvInstance)
head(x)
}
