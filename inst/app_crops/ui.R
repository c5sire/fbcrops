library(shiny)
library(shinydashboard)
library(rhandsontable)
library(fbsites)

tabName <- "resource_crop"

dashboardPage(skin = "yellow",

              dashboardHeader(title = "Demo Crop"),

              dashboardSidebar(
                menuItem("Resources",
                sidebarMenu(id = "menu",
                            menuSubItem("Crops", icon = icon("crop"),
                                        tabName = tabName)
                )
                )
              ),
              dashboardBody(
                tabItems(
                  fbcrops::ui_crop(name = tabName)
                )
              )

)
