introduction_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    bslib::card(
      full_screen = FALSE,
      bslib::card_header("Welcome to the App"),
      p("Card 1 body"),

      div(
        class = "card-actions",
        actionButton(
          ns("next_page_intro"),
          label = tagList("Next", icon("arrow-right")),
          class = "fun-btn fun-btn-primary"
        )
      )
    )
)
}

introduction_module_server <- function(id, parent_session) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    observeEvent(input$next_page_intro, {
      bslib::nav_select(id = "topnav", selected = "anatomy", session = parent_session)
    })

  })
}
