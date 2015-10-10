% File man/sisalData.Rd
% This file is part of the sisal package for R.
% Copyright (C) 2015 Aalto University
% Distributed under GPL 2 or later

\encoding{UTF-8}
\name{sisalData}
\alias{sisalData}
\title{
  Download External Datasets for \acronym{SISAL}
}
\description{
  Loads external datasets for testing with \acronym{SISAL}. Choices are
  laser generated data and Poland electricity load data.
}
\usage{
sisalData(dataset = c("laser", "laser.cont", "poland"), verify = TRUE)
}
\arguments{

  \item{dataset}{ A \code{character} string: \code{"laser"} (default),
    \code{"laser.cont"} or \code{"poland"}.  }

  \item{verify}{ A \code{logical} flag.  If \code{TRUE}, verifies the
    integrity of the downloaded data by computing a checksum and
    comparing it to a pre-computed value. }

}
\details{
  The laser generated data come in two parts, \code{"laser"} and
  \code{"laser.cont"}.  The Poland electricity load data is also divided
  in two parts, but they are both returned with \code{dataset="poland"}.

  This function requires an Internet connection.  The download may fail
  due to a problem such as the remote server being unavailable.
}
\value{

  With option \code{\var{dataset}="laser"}, returns an \code{integer}
  \code{vector} of \code{length} 1000.

  With option \code{\var{dataset}="laser.cont"}, returns an
  \code{integer} \code{vector} of \code{length} 9093.

  With option \code{\var{dataset}="poland"}, returns a list with two
  \code{numeric} vectors: \item{learn}{1400 values} \item{test}{201
  values}

}
\references{

  The Santa Fe Time Series Competition Data / Data Set A: Laser
  generated
  data. \url{http://www-psych.stanford.edu/~andreas/Time-Series/SantaFe.html#setA}.
  \acronym{URL} accessed on 2015-10-09.

  Environmental and Industrial Machine Learning Group / Datasets /
  Poland Electricity
  Load. \url{http://research.ics.aalto.fi/eiml/datasets.shtml}.
  \acronym{URL} accessed on 2015-10-09.

}
\author{
  Mikko Korpela
}

\seealso{
  \code{\link{testSisal}}
}
\examples{\dontrun{
foo <- sisalData("laser")
length(foo) # 1000
mean(foo)   # 59.894
sd(foo)     # 46.87543}
}
\keyword{utilities}
