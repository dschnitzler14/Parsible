practice_build_a_paper_module_ui <- function(id, dictionary) {
  ns <- NS(id)
  tagList(
    div(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("wrong_section_intro_text"))
        )
      )
    ),

    div(
      sortable_ui(ns("build_a_paper_sortable"), randomised_build_a_paper_dictionary)
    )
  )
}

practice_build_a_paper_module_server <- function(id, process_markdown) {
  moduleServer(id, function(input, output, session) {
    output$wrong_section_intro_text <- renderUI({
      process_markdown("practice/practice4_build/practice4_build_instructions_text.md")
    })

    sortable_server(
      "build_a_paper_sortable", build_a_paper_dictionary,
      build_a_paper_intro_dictionary,
      build_a_paper_methods_dictionary,
      build_a_paper_results_dictionary,
      build_a_paper_discussion_dictionary
    )
  })
}
