stats_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Statistics Basics Refresher"),
            uiOutput(ns("stats_intro_text1"))
          )
        )
      ),

      h1("Coming Soon!"),

      div(
        class = "ps-guide-nav",
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}

stats_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {


    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}