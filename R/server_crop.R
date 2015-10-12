#' Server side logic
#'
#' Constructs table
#'
#' @param input shinyserver input
#' @param output shinyserver output
#' @param session shinyserver session
#' @param dom target dom element name
#' @param values reactive values
#' @author Reinhard Simon
#' @export
server_crop <- function(input, output, session, dom="hot_crops", values){
  #values = shiny::reactiveValues()
  setHot_crops = function(x) values[[dom]] = x

  shiny::observe({
    input$saveBtn
    if (!is.null(values[[dom]])) {
      post_crop_table(values[[dom]])
    }

  })

  output[[dom]] = rhandsontable::renderRHandsontable({
    if (!is.null(input[[dom]])) {
      DF = rhandsontable::hot_to_r(input[[dom]])
    } else {
      DF = get_crop_table()
    }

    setHot_crops(DF)

    rh <- rhandsontable::rhandsontable(DF, height = 400)
    rhandsontable::hot_table(rh, highlightCol = TRUE, highlightRow = TRUE)

  })
}
