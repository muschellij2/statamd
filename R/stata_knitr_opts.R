
#' Options in knitr for Stata
#'
#' Uses \code{\link[knitr]{opts_chunk}} to set options for knitting the markdown.
#'
#' @param engine.path path for stata engine
#' @param comment comment for output, passed to \code{\link[knitr]{opts_chunk}}
#' @param ... additional arguments passed to passed to \code{\link[knitr]{opts_chunk}}
#'
#' @return Output of \code{\link[knitr]{opts_chunk}}
#' @export
#'
#' @importFrom knitr opts_chunk
#' @examples stata_knitr_opts()
stata_knitr_opts = function(engine.path = stata_engine_path(), comment = "", ...) {
  knitr::opts_chunk$set(engine = "stata",
                        engine.path = engine.path,
                        comment = comment)
}
