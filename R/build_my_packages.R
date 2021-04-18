#' Build my packages
#'
#' @importFrom utils install.packages
#'
#' @param ... package names as characters
#' @param package_path paackage path
#'
#' @export
build_my_packages = function(..., package_path = PKG_PATH){
  lib_vec = c(...)
  for (lib in lib_vec) {
    path = paste(package_path, lib, sep = "")
    install.packages(devtools::build(path), repos = NULL, type = "source")
  }
}

PKG_PATH = "C:/Users/postgres/Documents/git/"


#' Set PKG_PATH used for build_my_packages func.
#'
#' @importFrom utils install.packages
#'
#' @param ... package names as characters
#'
#' @export
set_package_path = function(path){
  PKG_PATH = path
}
