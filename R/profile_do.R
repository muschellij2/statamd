#' Make profile.do for Markdown
#'
#' Creates a profile.do that will run before every code chunk.  Helpful for
#' reading in the same data sets or setting options
#'
#' @param dataset Data set to read in, path to .dta.  If \code{NULL}, no
#' data set is read in
#' @param ... additional Stata code to put in profile.do
#'
#' @return Nothing
#' @export
#' @examples
#' filename = "cars.dta"
#' haven::write_dta(data = datasets::cars, path = filename, version = 13)
#' statamd::profile_do(dataset = filename)
#' readLines("profile.do")
#' file.remove(filename)
#' file.remove("profile.do")
profile_do = function(dataset, ...) {
  if (!is.null(dataset)) {
    x = paste0('use "', dataset, '"')
  } else {
    x = ""
  }
  x = c(x, ...)
  writeLines(x, "profile.do")
  return(invisible(NULL))
}
