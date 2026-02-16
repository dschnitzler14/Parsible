citing_module_ui <- function(id) { 
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("How to Cite Scientific Sources"),
            uiOutput(ns("citing_intro_text1"))
          )
        )
      ),

      bslib::layout_columns(
        col_widths = c(4, 4, 4),
        class = "ps-step-grid",

        bslib::card(
          class = "ps-step ps-step-1 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "1"),
                tags$h3("Know what needs a citation")
              ),
              uiOutput(ns("citing_step1_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-2 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "2"),
                tags$h3("Capture the essential details")
              ),
              uiOutput(ns("citing_step2_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-3 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "3"),
                tags$h3("In-text vs reference list")
              ),
              uiOutput(ns("citing_step3_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-4 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "4"),
                tags$h3("Choose a style and stick to it")
              ),
              uiOutput(ns("citing_step4_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-5 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "5"),
                tags$h3("Use DOIs and stable links")
              ),
              uiOutput(ns("citing_step5_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-6 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "6"),
                tags$h3("Do I need to cite X?")
              ),
              uiOutput(ns("citing_step6_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-7 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "7"),
                tags$h3("Avoid common citation mistakes")
              ),
              uiOutput(ns("citing_step7_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-8 ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "8"),
                tags$h3("Use a reference manager")
              ),
              uiOutput(ns("citing_step8_text"))
            )
          )
        ),
      ),

      div(
        class = "ps-guide-nav",
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}

citing_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {


output$citing_intro_text1 <- renderUI({
  process_markdown("citing/citing_intro.md")
})

output$citing_step1_text <- renderUI({
  process_markdown("citing/citing_step1_text.md")
})

output$citing_step2_text <- renderUI({
  process_markdown("citing/citing_step2_text.md")
})

output$citing_step3_text <- renderUI({
  process_markdown("citing/citing_step3_text.md")
})

output$citing_step4_text <- renderUI({
  process_markdown("citing/citing_step4_text.md")
})

output$citing_step5_text <- renderUI({
  process_markdown("citing/citing_step5_text.md")
})

output$citing_step6_text <- renderUI({
  process_markdown("citing/citing_step6_text.md")
})

output$citing_step7_text <- renderUI({
  process_markdown("citing/citing_step7_text.md")
})

output$citing_step8_text <- renderUI({
  process_markdown("citing/citing_step8_text.md")
})

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}