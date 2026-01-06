strategies_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    
  nav_buttons_ui(ns("nav_controls"))

)
}

strategies_module_server <- function(id, parent_session, nav_order_list) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

   nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

  })
}
