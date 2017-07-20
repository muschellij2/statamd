#' Stata Engine Path
#'
#' Determines the path to the Stata Engine
#' @return Path to stata engine
#' @export
#'
#' @examples
#' stata_engine_path()
stata_engine_path = function() {
  eg = expand.grid(SE = c(TRUE, FALSE), version = 11:15)

  for (ieg in seq(nrow(eg))) {
    SE = eg$SE[ieg]
    version = eg$version[ieg]
    sp = stata_engine_path_worker(SE = SE, version = version)
    if (file.exists(sp)) {
      break
    }
  }
  if (!file.exists(sp)) {
    stop("Stata Not found")
  }
  return(sp)
}