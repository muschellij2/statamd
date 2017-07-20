#' Stata Engine Path Background Worker
#'
#' Helps Determines the path to the Stata Engine
#'
#' @param SE is the Stata you have Special Edition?
#' @param version Which version of Stata do you have (only relevant on Windows)
#'
#' @return Path to stata engine
#' @export
#'
#' @examples
#' stata_engine_path_worker()
stata_engine_path_worker = function(SE = FALSE, version = 14) {
  se = ifelse(SE, "SE", "")

  OS = unname(Sys.info()["sysname"])
  # Need to specify path to Stata on local computer
  statapath = switch(OS,
                     Darwin = paste0("/Applications/Stata/Stata", se,
                                     ".app/Contents/MacOS/Stata", se),
                     Linux = "/usr/local/stata",
                     Windows = paste0("C:/Program Files (x86)/Stata", version,
                                      "/Stata", se, "-64.exe")
  )
}
