anatomy_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
  h3("Anatomy of a Paper"),

  bslib::layout_columns(
    tags$div(
      class = "vstack gap-3",
      bslib::card(bslib::card_header("Title")),
      bslib::card(bslib::card_header("Authors")),
      bslib::card(bslib::card_header("Abstract")),
      bslib::card(bslib::card_header("Introduction"))
    ),

    bslib::card(
      tags$img(src = "assets/1.png", class = "card-figure")
    ),

    col_widths = c(8, 4)
  ),

  bslib::layout_columns(
    tags$div(
      class = "vstack gap-3",
      bslib::card(bslib::card_header("Methods")),
      bslib::card(bslib::card_header("Results"))
          ),

    bslib::card(
      tags$img(src = "assets/2.png", class = "card-figure")
    ),

    col_widths = c(8, 4)
  ),

    bslib::layout_columns(
        tags$div(
        class = "vstack gap-3",
        bslib::card(bslib::card_header("Discussion")),
        bslib::card(bslib::card_header("References"))
        ),

        bslib::card(
        tags$img(src = "assets/3.png", class = "card-figure")
        ),

        col_widths = c(8, 4)
    ),


      div(
        class = "card-actions",
        actionButton(
          ns("next_page_anatomy"),
          label = tagList("Next", icon("arrow-right")),
          class = "fun-btn fun-btn-primary"
        )
      )
    )
}



anatomy_module_server <- function(id, parent_session, nav_order_list) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    observeEvent(input$next_page_anatomy, {
      bslib::nav_select(id = "topnav", selected = "strategies", session = parent_session)
    })
    
  })
}