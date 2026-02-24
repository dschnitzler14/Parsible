stats_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide ps-what-paper",
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
        class = "ps-step-grid ps-what-paper-grid",
        bslib::card(
          class = "ps-step ps-step-1 ps-topic-card",
          `data-card-id` = "what-paper-31",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box1"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "1"),
                tags$h3("What is are statistical tests and why do we need them?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        bslib::card(
          class = "ps-step ps-step-2 ps-topic-card",
          `data-card-id` = "what-paper-32",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box2"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "2"),
                tags$h3("What is a p-value?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-2 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "2"),
        #         tags$h3("What is a p-value?")
        #       ),
        #       uiOutput(ns("stats_step2_text"))
        #     )
        #   )
        # ),
        # bslib::card(
        #   class = "ps-step ps-step-3 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "3"),
        #         tags$h3("Why do we need to check assumptions of statistical tests?")
        #       ),
        #       uiOutput(ns("stats_step3_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-3 ps-topic-card",
          `data-card-id` = "what-paper-33",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box3"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "3"),
                tags$h3("Why do we need to check assumptions of statistical tests?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-4 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "4"),
        #         tags$h3("Type I and Type II Errors")
        #       ),
        #       uiOutput(ns("stats_step4_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-4 ps-topic-card",
          `data-card-id` = "what-paper-34",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box4"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "4"),
                tags$h3("Type I and Type II Errors"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-5 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "5"),
        #         tags$h3("Confidence Intervals")
        #       ),
        #       uiOutput(ns("stats_step5_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-5 ps-topic-card",
          `data-card-id` = "what-paper-35",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box5"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "5"),
                tags$h3("Confidence Intervals"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-6 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "6"),
        #         tags$h3("Why does sample size matter?")
        #       ),
        #       uiOutput(ns("stats_step6_text"))
        #     )
        #   )
        # ),

        bslib::card(
          class = "ps-step ps-step-6 ps-topic-card",
          `data-card-id` = "what-paper-36",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box6"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "6"),
                tags$h3("Why does sample size matter?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-7 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "7"),
        #         tags$h3("What are effect sizes?")
        #       ),
        #       uiOutput(ns("stats_step7_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-7 ps-topic-card",
          `data-card-id` = "what-paper-37",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box7"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "7"),
                tags$h3("What are effect sizes?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-8 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "8"),
        #         tags$h3("What is p-hacking?")
        #       ),
        #       uiOutput(ns("stats_step8_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-8 ps-topic-card",
          `data-card-id` = "what-paper-38",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box8"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "8"),
                tags$h3("What is p-hacking?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-9 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "9"),
        #         tags$h3("Summary Statistics and Data Types")
        #       ),
        #       uiOutput(ns("stats_step9_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-9 ps-topic-card",
          `data-card-id` = "what-paper-39",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box9"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "9"),
                tags$h3("Summary Statistics and Data Types"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-10 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "10"),
        #         tags$h3("Common statistical mistakes in papers")
        #       ),
        #       uiOutput(ns("stats_step10_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-10 ps-topic-card",
          `data-card-id` = "what-paper-310",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box10"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "10"),
                tags$h3("Common statistical mistakes in papers"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-11 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "11"),
        #         tags$h3("Multiple testing corrections")
        #       ),
        #       uiOutput(ns("stats_step11_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-11 ps-topic-card",
          `data-card-id` = "what-paper-311",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box11"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "11"),
                tags$h3("Multiple testing corrections"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-12 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "12"),
        #         tags$h3("Which Test Should I Use?")
        #       ),
        #       uiOutput(ns("stats_step12_text"))
        #     )
        #   )
        # ),
        bslib::card(
          class = "ps-step ps-step-12 ps-topic-card",
          `data-card-id` = "what-paper-312",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box12"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "12"),
                tags$h3("Which Test Should I Use?"),
                tags$p("")
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Open chapter")
              )
            )
          )
        ),
        # bslib::card(
        #   class = "ps-step ps-step-13 ps-static-card",
        #   bslib::card_body(
        #     tags$div(
        #       class = "ps-step-inner",
        #       tags$div(
        #         class = "ps-step-title",
        #         tags$span(class = "ps-step-num", "13"),
        #         tags$h3("Type I and Type II Errors")
        #       ),
        #       uiOutput(ns("stats_step13_text"))
        #     )
        #   )
        # )
      )
    ),
    nav_buttons_ui(ns("nav_controls"))
  )
}

stats_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {
    open_md_modal <- function(title, subtitle, md_path) {
      showModal(
        modalDialog(
          title = tags$div(
            class = "ps-modal-title",
            tags$div(class = "ps-modal-title-main", title),
            tags$div(class = "ps-modal-title-sub", subtitle)
          ),
          div(class = "ps-modal-body prose", process_markdown(md_path)),
          easyClose = TRUE,
          footer = modalButton("Close"),
          size = "l"
        )
      )
    }

    output$stats_intro_text1 <- renderUI({
      process_markdown("stats/stats_intro.md")
    })

    observeEvent(input$open_box1,
      {
        open_md_modal(
          "What is a statistical test and why do we use them?",
          "",
          "stats/stats_step1_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box2,
      {
        open_md_modal(
          "What is a p-value?",
          "",
          "stats/stats_step2_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box3,
      {
        open_md_modal(
          "Why do we need to check assumptions of statistical tests?",
          "",
          "stats/stats_step3_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box4,
      {
        open_md_modal(
          "Type I and Type II Errors",
          "",
          "stats/stats_step4_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box5,
      {
        open_md_modal(
          "Confidence Intervals",
          "",
          "stats/stats_step5_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box6,
      {
        open_md_modal(
          "Why does sample size matter?",
          "",
          "stats/stats_step6_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box7,
      {
        open_md_modal(
          "What are effect sizes?",
          "",
          "stats/stats_step7_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box8,
      {
        open_md_modal(
          "What is p-hacking?",
          "",
          "stats/stats_step8_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box9,
      {
        open_md_modal(
          "Summary Statistics and Data Types",
          "",
          "stats/stats_step9_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box10,
      {
        open_md_modal(
          "Common statistical mistakes in papers",
          "",
          "stats/stats_step10_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box11,
      {
        open_md_modal(
          "Multiple testing corrections",
          "",
          "stats/stats_step11_text.md"
        )
      },
      ignoreInit = TRUE
    )

    observeEvent(input$open_box12,
      {
        open_md_modal(
          "Which Test Should I Use?",
          "",
          "stats/stats_step12_text.md"
        )
      },
      ignoreInit = TRUE
    )
    # output$stats_step1_text <- renderUI({
    #   process_markdown("stats/stats_step1_text.md")
    # })

    output$stats_step2_text <- renderUI({
      process_markdown("stats/stats_step2_text.md")
    })

    output$stats_step3_text <- renderUI({
      process_markdown("stats/stats_step3_text.md")
    })

    output$stats_step4_text <- renderUI({
      process_markdown("stats/stats_step4_text.md")
    })

    output$stats_step5_text <- renderUI({
      process_markdown("stats/stats_step5_text.md")
    })

    output$stats_step6_text <- renderUI({
      process_markdown("stats/stats_step6_text.md")
    })

    output$stats_step7_text <- renderUI({
      process_markdown("stats/stats_step7_text.md")
    })

    output$stats_step8_text <- renderUI({
      process_markdown("stats/stats_step8_text.md")
    })

    output$stats_step9_text <- renderUI({
      process_markdown("stats/stats_step9_text.md")
    })

    output$stats_step10_text <- renderUI({
      process_markdown("stats/stats_step10_text.md")
    })

    output$stats_step11_text <- renderUI({
      process_markdown("stats/stats_step11_text.md")
    })

    output$stats_step12_text <- renderUI({
      process_markdown("stats/stats_step12_text.md")
    })

    # output$stats_step13_text <- renderUI({
    #   process_markdown("stats/stats_step13_text.md")
    # })


    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
  })
}
