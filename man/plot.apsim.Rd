% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/visualize.R
\name{plot.apsim}
\alias{plot.apsim}
\title{Visualize the Results of an APSIM Simulation}
\usage{
\method{plot}{apsim}(x, y = NULL, ask = TRUE, one_plot = FALSE, ...)
}
\arguments{
\item{x}{data frame of class \code{"apsim"} including the results of an APSIM simulation}

\item{y}{variable to plot on y-axis; if left empty all variables will be plotted on separate plots}

\item{ask}{logical; if \code{TRUE}, the user is asked before each plot, see \code{\link{par}(ask=.)}}

\item{one_plot}{logical; if \code{TRUE} all variables are plotted on one faceted plot}

\item{...}{additional arguments passed to \code{\link[ggplot2:qplot]{qplot}}}
}
\description{
Plot routine for \code{"apsim"} class objects
}
\details{
Similar to the \code{\link[stats:plot.lm]{plot}} for \code{\link{lm}} objects, \code{plot.apsim} will
plot each response in the results of an APSIM simulation on its own \code{ggplot2} object.  If the
\code{one_plot} argument is set to \code{TRUE} then \code{\link[ggplot2:facet_wrap]{facet_wrap}} is used to plot
all of the responses on one screen.  Alternatively, one response can be plotted by setting \code{y} to
one variable corresponding to a column in \code{x}.
}
\examples{
\dontrun{
apsimExe <-"C:/Program Files (x86)/Apsim75-r3008/Model/Apsim.exe"
apsimWd <- "~/APSIM"
toRun <- c("Centro.apsim", "Continuous Wheat.apsim")
results <- apsim(exe = apsimExe, wd = apsimWd, files = toRun)

#Look at all of the results as a function of time in seperate plots
plot(results[[2]])

#Put all variables on one faceted plot
plot(results[[2]], one_plot = TRUE) + theme_bw()

#Plot just yield as a function of time
plot(results[[2]], y = 'yield') + geom_line(colour = 'red') + theme_bw()
}
}

