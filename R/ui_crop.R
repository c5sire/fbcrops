#' shiny UI element
#'
#' returns a re-usable user interface element
#'
#' @author Reinhard Simon
#' @param type of ui Element; default is a tab in a shiny dashboard
#' @param title display title
#' @param name a reference name
#' @param output name of output element
#' @export
ui_crop <- function(type = "tab", title = "Crops configuration", name = "resource_crop",
                    output = "hot_crops"){
  shinydashboard::tabItem(tabName = name,
          shiny::fluidRow(
            shinydashboard::box(height = 400,
              title = title,
              rhandsontable::rHandsontableOutput(output)
            )
          )
  )
}
