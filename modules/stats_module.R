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
          tags$h3("Brief overview of statistical tests"),
          uiOutput(ns("stats_intro_text1"))
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
              tags$h3("What is a statistical test and why do we use them?")
            ),
            uiOutput(ns("stats_step1_text"))
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
              tags$h3("What is a p-value and why does it matter?")
            ),
            uiOutput(ns("stats_step2_text"))
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
              tags$h3("Why do we need to check assumptions of statistical tests?")
            ),
            uiOutput(ns("stats_step3_text"))
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
              tags$h3("How to interpret statistical results?")
            ),
            uiOutput(ns("stats_step4_text"))
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
              tags$h3("How to choose the right statistical test for your data?")
            ),
            uiOutput(ns("stats_step5_text"))
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
              tags$h3("What is statistical power and why does sample size matter?")
            ),
            uiOutput(ns("stats_step6_text"))
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
              tags$h3("What are effect sizes?")
            ),
            uiOutput(ns("stats_step7_text"))
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
              tags$h3("What is p-hacking and why is multiple testing a problem?")
            ),
            uiOutput(ns("stats_step8_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-9 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "9"),
              tags$h3("Descriptive vs inferential statistics")
            ),
            uiOutput(ns("stats_step9_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-10 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "10"),
              tags$h3("Common statistical mistakes in papers")
            ),
            uiOutput(ns("stats_step10_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-11 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "11"),
              tags$h3("How to read statistical figures")
            ),
            uiOutput(ns("stats_step11_text"))
          )
        )
      )
    )
  ),
    nav_buttons_ui(ns("nav_controls"))
  )
}

stats_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {


  output$stats_intro_text1 <- renderUI({
    process_markdown("stats/stats_intro.md")
  })


    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}