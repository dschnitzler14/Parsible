advice_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Reading Strategies"),
            uiOutput(ns("strategies_intro"))
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
                tags$h3("📚 Why are we reading this paper?")
              ),
              uiOutput(ns("strategies_intro_why"))
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
                tags$h3("🔬 What should I focus on?")
              ),
              uiOutput(ns("strategies_intro_jargon"))
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
                tags$h3("⏩️ What you can safely ignore (on your first read)")
              ),
              uiOutput(ns("strategies_intro_ignore"))
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
                tags$h3("💬 How to handle jargon")
              ),
              uiOutput(ns("strategies_intro_esl"))
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
                tags$h3("⚓️ TL;DR - How to read a paper")
              ),
              uiOutput(ns("strategies_intro_tldr"))
            )
          )
        ),

     ),

    ),

    nav_buttons_ui(ns("nav_controls"))
    
)
}


advice_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }


output$strategies_intro <- renderUI({
  process_markdown("strategies/advice_intro_text.md")
})

output$strategies_intro_why <- renderUI({
  process_markdown("strategies/strategies_intro_why_text.md")
})

output$strategies_intro_jargon <- renderUI({
  process_markdown("strategies/strategies_intro_jargon_text.md")
})

output$strategies_intro_ignore <- renderUI({
  process_markdown("strategies/strategies_intro_ignore_text.md")
})

output$strategies_intro_tldr <- renderUI({
  process_markdown("strategies/strategies_intro_tldr_text.md")
})

output$strategies_intro_esl <- renderUI({
  process_markdown("strategies/strategies_intro_esl_text.md")
})


# nav_buttons_server----

   nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

})
  
}
