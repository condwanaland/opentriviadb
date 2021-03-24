##' Function to (heuristically) test for a network connection by attempting
##' to connect to a given website.
##'
##' This function was kindly provided by Dirk Eddelbuettel as part of this SO
##' answer (https://stackoverflow.com/questions/66773611/cran-example-fails-if-run-offline-talks-to-external-api). It is copied here to avoid the `dang` dependency.
##'
##' @title Is the current session (networked) and connected?
##' @param site Character variable with site to try to connect to,
##' defauls to \code{http://www.opentdb.com}
##' @return A boolean value indicating networking status
##' @author Dirk Eddelbuettel
isConnected <- function(site = "opentdb.com") {
  uoc <- function(site) {
    con <- url(site)                # need to assign so that we can close
    open(con)                       # in case of success we have a connection
    close(con)                      # ... so we need to clean up
  }
  suppressWarnings(!inherits(try(uoc(site), silent=TRUE), "try-error"))
}
