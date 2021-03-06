% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rstan_package_skeleton.R
\name{rstan_package_skeleton}
\alias{rstan_package_skeleton}
\title{Create the skeleton of a new \R package with Stan programs}
\usage{
rstan_package_skeleton(path, fields = getOption("devtools.desc"),
  rstudio = TRUE, open = TRUE, stan_files = character(), travis = TRUE)
}
\arguments{
\item{path}{A relative or absolute path to the new package to be created
(terminating in the package name).}

\item{fields, rstudio, open}{See \code{usethis::create_package}.}

\item{stan_files}{A character vector with paths to \code{.stan} files to
include in the package (these files will be included in the
\code{src/stan_files} directory). If not specified then the \code{.stan}
files for the package can be manually placed into the appropriate directory
later.}

\item{travis}{Should a \code{.travis.yml} file be added to the package
directory? Defaults to \code{TRUE}. The file has some settings already set
to help with compilation issues, but we do not guarantee that it will work
on \href{https://travis-ci.org/}{travis-ci} without manual adjustments.}
}
\description{
\if{html}{\figure{stanlogo.png}{options: width="25px" alt="http://mc-stan.org/about/logo/"}}
  The \code{rstan_package_skeleton} function helps get you started developing
  \R packages that interface with Stan via the \pkg{rstan} package. As of
  \pkg{rstantools} v1.5.0, \code{rstan_package_skeleton} calls
  \code{usethis::create_package} (instead of \code{utils::package.skeleton})
  and then makes necessary adjustments so that the package can include Stan
  Programs that can be built into binary versions (i.e., pre-compiled like
  \pkg{rstanarm}).

  See the \strong{See Also} section below for links to recommendations for
  developers and a step by step walk-through of what to do after running
  \code{rstan_package_skeleton}.
}
\note{
This function downloads several files from \pkg{rstanarm} package's
  \href{http://github.com/stan-dev/rstanarm}{GitHub repository} to facilitate
  building the resulting package. Note that \pkg{\link[rstanarm]{rstanarm}}
  is licensed under the GPL >= 3, so package builders who do not want to be
  governed by that license should not use the downloaded files that contain
  \R code (that said, \pkg{Rcpp} is GPL, so not using the \pkg{rstanarm}
  files is not the only thing impeding use of other licenses). Otherwise, it
  may be worth considering whether it would be easier to include your
  \code{.stan} programs and supporting \R code in the \pkg{rstanarm} package.
}
\seealso{
\itemize{
  \item \href{https://github.com/stan-dev/rstanarm}{The \pkg{rstanarm} repository on GitHub.}
}

\itemize{
  \item Guidelines and recommendations for developers of \R packages
  interfacing with Stan and a demonstration getting a simple package working
  can be found in the vignettes included with \pkg{rstantools} and at
  \url{http://mc-stan.org/rstantools/articles/}.
}

\itemize{
  \item After reading the guidelines for developers, if you have trouble
  setting up your package let us know on the the
  \href{http://discourse.mc-stan.org}{Stan Forums} or at
  \href{https://github.com/stan-dev/rstantools/issues}{\pkg{rstantools} issue
  tracker}.
}

\itemize{
  \item The useR2016 presentation
  \href{https://channel9.msdn.com/Events/useR-international-R-User-conferences/useR-International-R-User-2017-Conference/How-to-Use-RStan-to-Estimate-Models-in-External-R-Packages}{How
  to Use (R)Stan to Estimate Models in External R Packages.}
}
}
