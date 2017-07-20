#' Write Stata DTA out in older format
#'
#' Convert Stata DTA files to older format for older versions
#' @param path path to .dta file
#' @param out_path output path of .dta file (assumed to be the same as input
#' if unspecified)
#' @param version version of Stata file to write out
#'
#' @return Path of .dta
#' @export
#'
#' @importFrom haven read_dta write_dta
write_stata_old = function(path, out_path = path, version = 13) {
  x = haven::read_dta(file = path)
  haven::write_dta(data = x, path = out_path, version = version)
  return(out_path)
}