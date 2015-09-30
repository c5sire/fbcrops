library(shiny)
library(rhandsontable)
library(fbglobal)
library(fbcrops)

shinyServer <- function(input, output, session) {

  fbcrops::server_crop(input, output, session)

}
