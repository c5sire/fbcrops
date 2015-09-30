#' Demo application
#'
#' Builds a shinydashboard app from re-usable application elements
#'
#' @author Reinhard Simon
#' @export
run_crops <- function(){
  try(
    shiny::runApp(system.file("app_crops", package="fbcrops"))
  )
}
