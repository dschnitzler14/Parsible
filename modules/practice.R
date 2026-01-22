practice_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    bslib::card(
      full_screen = TRUE,

      bslib::card_header(
        uiOutput(ns("section_title"))
      ),

      bslib::card_body(
        bslib::layout_sidebar(
          fillable = FALSE,
          fill = FALSE,

          bg = "#fffdf6",
          fg = "#2b362bff",
          border = TRUE,
          border_radius = TRUE,
          border_color = "rgba(0,0,0,0.08)",
          padding = "2px",
          gap = "2px",

          sidebar = bslib::sidebar(
            title = tags$span("Practice Games", class = "toc-title"),
            open = list(desktop = "always", mobile = "closed"),
            width = "30%",
            bg = "inherit",
            fg = "inherit",
            padding = "0px",
            gap = "1px",

            bslib::navset_pill_list(
              id = ns("toc"),
              well = FALSE,
              bslib::nav_panel("Practice 1", value = "practice1"),
              bslib::nav_panel("Practice 2", value = "practice2"),
              bslib::nav_panel("Practice 3", value = "practice3"),
              bslib::nav_panel("Practice 4", value = "practice4"),
              bslib::nav_panel("Practice 5", value = "practice5"),
              bslib::nav_panel("Practice 6", value = "practice6")
            )
          ),

          tags$div(
            class = "module-page",
            uiOutput(ns("section_body"))
          )
        )
      ),

      bslib::card_footer(
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}

practice_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    titles <- c(
      practice1 = "Practice 1",
      practice2 = "Practice 2",
      practice3 = "Practice 3",
      practice4 = "Practice 4",
      practice5 = "Practice 5",
      practice6 = "Practice 6"
    )

    current_key <- reactive({
      if (is.null(input$toc) || input$toc == "") "practice1" else input$toc
    })

    output$section_title <- renderUI({
      titles[[current_key()]]
    })

    output$section_body <- renderUI({
      key <- current_key()
      switch(
        key,
        practice1 = practice_intro_mystery_module_ui(ns("intro_mystery_module")),
        practice2 = practice_discussion_claims_spec_module_ui(ns("discussion_claims_spec_module")),
        practice3 = practice_build_a_paper_module_ui(ns("build_a_paper_module"), dictionary = dictionary),
        practice4 = practice_what_does_not_belong_module_ui(ns("what_does_not_belong_module")),
        practice5 = practice_green_red_flag_module_ui(ns("green_red_flag_module")),
        practice6 = practice_your_turn_module_ui(ns("your_turn_module"))
      )
    })

    observe({
      key <- current_key()
      if (identical(key, "practice1")) practice_intro_mystery_module_server("intro_mystery_module", process_rmd_fragment = process_rmd_fragment)
      if (identical(key, "practice2")) practice_discussion_claims_spec_module_server("discussion_claims_spec_module")
      if (identical(key, "practice3")) practice_build_a_paper_module_server("build_a_paper_module")
      if (identical(key, "practice4")) practice_what_does_not_belong_module_server("what_does_not_belong_module", process_rmd_fragment = process_rmd_fragment, process_markdown = process_markdown)
      if (identical(key, "practice5")) practice_green_red_flag_module_server("green_red_flag_module")
      if (identical(key, "practice6")) practice_your_turn_module_server("your_turn_module")
    })

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
  })
}
