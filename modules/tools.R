tools_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(

    bslib::layout_columns(
      col_widths = c(4, 4, 4),

      bslib::card(
        class = "tool-card tool-card-click",
        bslib::card_body(
          style = "cursor:pointer;",
          onclick = "window.open('https://www.zotero.org','_blank')",
          tags$div(
            class = "tool-card-content",
            tags$h3("Zotero"),
            tags$p("Bibliography manager"),
            tags$div(class = "tool-cta", "Go to site now")
          )
        )
      ),

      bslib::card(
        class = "tool-card tool-card-click",
        bslib::card_body(
          style = "cursor:pointer;",
          onclick = "window.open('https://www.zotero.org','_blank')",
          tags$div(
            class = "tool-card-content",
            tags$h3("Zotero"),
            tags$p("Bibliography manager"),
            tags$div(class = "tool-cta", "Go to site now")
          )
        )
      ),

      bslib::card(
        class = "tool-card tool-card-click",
        bslib::card_body(
          style = "cursor:pointer;",
          onclick = "window.open('https://www.zotero.org','_blank')",
          tags$div(
            class = "tool-card-content",
            tags$h3("Zotero"),
            tags$p("Bibliography manager"),
            tags$div(class = "tool-cta", "Go to site now")
          )
        )
      ),

      bslib::card(
        class = "tool-card tool-card-click",
        bslib::card_body(
          style = "cursor:pointer;",
          onclick = "window.open('https://www.zotero.org','_blank')",
          tags$div(
            class = "tool-card-content",
            tags$h3("Zotero"),
            tags$p("Bibliography manager"),
            tags$div(class = "tool-cta", "Go to site now")
          )
        )
      ),

      bslib::card(
        class = "tool-card tool-card-click",
        bslib::card_body(
          style = "cursor:pointer;",
          onclick = "window.open('https://www.zotero.org','_blank')",
          tags$div(
            class = "tool-card-content",
            tags$h3("Zotero"),
            tags$p("Bibliography manager"),
            tags$div(class = "tool-cta", "Go to site now")
          )
        )
      ),

      bslib::card(
        class = "tool-card tool-card-click",
        bslib::card_body(
          style = "cursor:pointer;",
          onclick = "window.open('https://www.zotero.org','_blank')",
          tags$div(
            class = "tool-card-content",
            tags$h3("Zotero"),
            tags$p("Bibliography manager"),
            tags$div(class = "tool-cta", "Go to site now")
          )
        )
      )

    ),
        nav_buttons_ui(ns("nav_controls")),

  )
}

###

####
tools_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
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
