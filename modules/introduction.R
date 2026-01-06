introduction_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    bslib::card(
      full_screen = FALSE,
      bslib::card_header("Welcome to the App"),
      p("Card 1 body"),

      nav_buttons_ui(ns("nav_controls"))


    )
)
}

introduction_module_server <- function(id, parent_session, nav_order_list) {
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
