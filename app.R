source("global.R")

library(shiny)
library(bslib)

# load all modules in modules/ directory ----
module_files <- list.files(path = "modules", pattern = "\\.R$", full.names = TRUE)
invisible(lapply(module_files, source))

theme <- bslib::bs_theme(
  bg = "#EEDDC1",
  fg = "#2f3b00",

  primary = "#4C6B00",
  secondary = "#CBD5AE",

  base_font = bslib::font_google("Inter"),
  heading_font = bslib::font_google("Libre Baskerville")
)

ui <- bslib::page_navbar(
  title = "Reading A Paper",
  id = "topnav",
  theme = theme,

  tags$head(
    includeCSS("www/styles.css"),
    tags$meta(name = "viewport", content = "width=device-width, initial-scale=1.0")
  ),

  nav_panel(
    "Introduction",
    value = "introduction",
    introduction_module_ui("introduction")
  ),
  nav_panel(
    "Anatomy of a Paper",
    value = "anatomy",
    anatomy_module_ui("anatomy")
  ),
  nav_panel(
    "Reading Strategies",
    value = "strategies",
    h3("Coming soon")
  ),
  nav_panel(
    "Practice",
    value = "practice",
    h3("Coming soon")
  ),

  # --- footer ---
  footer = tags$footer(
    class = "app-footer",
    div(
      class = "footer-inner",
      span("Powered by"),
      tags$a(
        href = "https://paperstars.org",
        target = "_blank",
        tags$img(
          src = "assets/Paperstars_Logo_White_S.png",
          alt = "Paperstars",
          class = "footer-logo"
        )
      )
    )
  )
)

server <- function(input, output, session) {
  introduction_module_server("introduction", parent_session = session)
  anatomy_module_server("anatomy", parent_session = session)
  strategies_module_server("strategies", parent_session = session)
}

shinyApp(ui, server)
