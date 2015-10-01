library(shiny)
library(shinydashboard)
library(rhandsontable)
library(fbglobal)
library(fbcrops)
#library(fbprogram)

tabNameC  <- "resource_crop"

server <- function(input, output, session) {
  values = shiny::reactiveValues()
  fbcrops::server_crop(input, output, session, values = values)
}

ui <- dashboardPage(skin = "yellow",
                    dashboardHeader(title = "Demo Crop"),
                    dashboardSidebar(
                      menuItem("Resources",
                       sidebarMenu(id = "menu",
                        menuSubItem("Crop", icon = icon("crop"),
                                               tabName = tabNameC)
                               )
                      )
                    ),
                    dashboardBody(
                      tabItems(
                        fbcrops::ui_crop(name = tabNameC)
                      )
                    )
)

shinyApp(ui = ui, server = server)
