#' Build my packages
#'
#' @importFrom utils install.packages
#'
#' @param ... package names as characters
#'
#' @export
build_my_packages = function(package_path, ...){
  lib_vec = c(...)
  for (lib in lib_vec) {
    path = paste(package_path, lib, sep = "")
    install.packages(devtools::build(path), repos = NULL, type = "source")
  }
}

