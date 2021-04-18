#' Build my packages
#'
#' @importFrom utils install.packages
#'
#' @param ... package names as characters
#'
#' @export
build_my_packages = function(package_path = PKG_PATH, ...){
  lib_vec = c(...)
  for (lib in lib_vec) {
    path = paste(package_path, lib, sep = "")
    install.packages(devtools::build(path), repos = NULL, type = "source")
  }
}

PKG_PATH = "C:/Users/postgres/Documents/git/"

set_package_path = function(path){
  PKG_PATH = path
}
