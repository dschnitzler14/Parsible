practice_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide ps-intro",
      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Practice Games"),
            uiOutput(ns("practice_intro"))
          )
        )
      ),
    ),
    card(
      card_body(
        tags$div(
          class = "ps-reading-tabs",
          tags$div(id = ns("practice_top")),
          navset_tab(
            id = ns("practice_tabs"),
            nav_panel(
              value = "practice_find_gap_panel",
              title = tagList(
                bs_icon("search"),
                " Find the Gap"
              ),
              practice_intro_mystery_module_ui(ns("intro_mystery_module")),
            ),
            nav_panel(
              value = "practice_speculation_vs_evidence_panel",
              title = tagList(
                bs_icon("check-square"),
                " Speculation vs Evidence"
              ),
              practice_discussion_claims_spec_module_ui(ns("discussion_claims_spec_module")),
            ),
            nav_panel(
              value = "practice_build_a_paper_panel",
              title = tagList(
                bs_icon("tools"),
                " Build a Paper"
              ),
              practice_build_a_paper_module_ui(ns("build_a_paper_module"), dictionary = dictionary),
            ),
            nav_panel(
              value = "practice_what_does_not_belong_panel",
              title = tagList(
                bs_icon("ban"),
                " What Does Not Belong"
              ),
              practice_what_does_not_belong_module_ui(ns("what_does_not_belong_module")),
            ),
            nav_panel(
              value = "practice_green_red_flag_panel",
              title = tagList(
                bs_icon("flag"),
                " Green vs Red Flags"
              ),
              practice_green_red_flag_module_ui(ns("green_red_flag_module")),
            ),
          )
        ),
        div(
          class = "ps-tab-nav-wrap",
          div(
            class = "ps-tab-nav",
            actionButton(ns("practice_prev"), "← Previous Practice", class = "ps-nav-prev"),
            actionButton(ns("practice_next"), "Next Practice →", class = "ps-nav-next")
          )
        )
      )
    ), # card

    nav_buttons_ui(ns("nav_controls"))
  )
}

practice_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$practice_intro <- renderUI({
      process_markdown("practice/practice_intro.md")
    })

    practice_intro_mystery_module_server("intro_mystery_module", process_rmd_fragment = process_rmd_fragment)
    practice_discussion_claims_spec_module_server("discussion_claims_spec_module", process_markdown = process_markdown)
    practice_build_a_paper_module_server("build_a_paper_module", process_markdown = process_markdown)
    practice_what_does_not_belong_module_server("what_does_not_belong_module", process_rmd_fragment = process_rmd_fragment, process_markdown = process_markdown)
    practice_green_red_flag_module_server("green_red_flag_module", dictionary_correct = flag_dictionary_correct, process_markdown = process_markdown)


    ###

    # nav buttons_strategy----

    practice_tab_order <- c(
      "practice_find_gap_panel",
      "practice_speculation_vs_evidence_panel",
      "practice_build_a_paper_panel",
      "practice_what_does_not_belong_panel",
      "practice_green_red_flag_panel"
    )

    observeEvent(input$practice_next, {
      current <- input$practice_tabs
      i <- match(current, practice_tab_order)

      if (!is.na(i) && i < length(practice_tab_order)) {
        bslib::nav_select("practice_tabs", practice_tab_order[i + 1], session = session)
        session$sendCustomMessage(
          "scrollToAnchor",
          list(id = ns("practice_top"))
        )
      }

      print("next pressed")
    })

    observeEvent(input$practice_prev, {
      current <- input$practice_tabs
      i <- match(current, practice_tab_order)

      if (!is.na(i) && i > 1) {
        bslib::nav_select("practice_tabs", practice_tab_order[i - 1], session = session)
        session$sendCustomMessage(
          "scrollToAnchor",
          list(id = ns("practice_top"))
        )
      }
    })

    observe({
      current <- input$practice_tabs
      i <- match(current, practice_tab_order)

      shinyjs::toggle(
        id = "practice_prev",
        condition = !is.na(i) && i > 1
      )

      shinyjs::toggle(
        id = "practice_next",
        condition = !is.na(i) && i < length(practice_tab_order)
      )
    })


    # practice_tab_order <- c(
    #   "practice_find_gap_panel",
    #   "practice_speculation_vs_evidence_panel",
    #   "practice_build_a_paper_panel",
    #   "practice_what_does_not_belong_panel",
    #   "practice_green_red_flag_panel"
    # )

    # observeEvent(input$practice_next, {
    #   current <- input$practice_tabs
    #   i <- match(current, practice_tab_order)

    #   if (!is.na(i) && i < length(practice_tab_order)) {
    #     bslib::nav_select("practice_tabs", practice_tab_order[i + 1], session = session)
    #     session$sendCustomMessage(
    #       "scrollToAnchor",
    #       list(id = ns("practice_top"))
    #     )
    #   }
    # })


    # observeEvent(input$practice_prev, {
    #   current <- input$practice_tabs
    #   i <- match(current, practice_tab_order)

    #   if (!is.na(i) && i > 1) {
    #     bslib::nav_select("practice_tabs", practice_tab_order[i - 1], session = session)
    #     session$sendCustomMessage(
    #       "scrollToAnchor",
    #       list(id = ns("practice_top"))
    #     )
    #   }
    # })

    # observe({
    #   current <- input$practice_tabs
    #   i <- match(current, practice_tab_order)

    #   shinyjs::toggle(
    #     id = "practice_prev",
    #     condition = !is.na(i) && i > 1
    #   )

    #   shinyjs::toggle(
    #     id = "practice_next",
    #     condition = !is.na(i) && i < length(practice_tab_order)
    #   )
    # })

    ###

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
  })
}
