introduction_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide ps-intro",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Welcome: How to Read a Scientific Paper"),
            uiOutput(ns("intro_lede"))
          )
        )
      ),

      bslib::layout_columns(
        col_widths = c(4, 4, 4),
        class = "ps-step-grid",
 
        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("🔍 What this app does")
              ),
              uiOutput(ns("intro_box_what"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("🧠 What you can do with Parsible")
              ),
              uiOutput(ns("intro_box_do"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("⚠️ Important to know")
              ),
              uiOutput(ns("intro_box_important"))
            )
          )
        )
      ),

      bslib::layout_columns(
        col_widths = c(6, 6),
        class = "ps-step-grid",

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("👉 How to use this app")
              ),
              uiOutput(ns("intro_box_howto"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("🚀 When you’re ready")
              ),
              uiOutput(ns("intro_box_ready"))
            )
          )
        )
      ),

      div(
        class = "ps-guide-nav",
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}


introduction_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

output$intro_box_ready <- renderUI({
        process_markdown("introduction/intro_box_ready_text.md")
      })

output$intro_box_howto <- renderUI({
        process_markdown("introduction/intro_box_howto_text.md")
      })

output$intro_box_important <- renderUI({
        process_markdown("introduction/intro_box_important_text.md")
      })

output$intro_lede <- renderUI({
        process_markdown("introduction/intro_lede_text.md")
      })

output$intro_box_do <- renderUI({
        process_markdown("introduction/intro_box_do_text.md")
      })


output$intro_box_what <- renderUI({
        process_markdown("introduction/intro_box_what_text.md")
      })


   output$introduction_box1 <- renderUI({
        process_markdown("introduction/introduction.md")
      })

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )



  })
}
