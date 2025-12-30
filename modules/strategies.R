strategies_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    
)
}

strategies_module_server <- function(id, parent_session) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    observeEvent(input$next_page_intro, {
      bslib::nav_select(id = "topnav", selected = "anatomy", session = parent_session)
    })

  })
}
