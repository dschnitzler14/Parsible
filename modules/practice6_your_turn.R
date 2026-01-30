practice_your_turn_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("your_turn_intro_text"))
        )
      )
    ),
    card(
      card_header("Pick a Paper to Read"),
      
      
      card_body(
        layout_columns(
          widths = c(6, 6),
          card(
          p("Effect of Caffeine on Heart Rate and Blood Pressure"),
          actionButton(ns("Geethavani_paper"), "Read Geethavani et al. (2014)")),
          card(
          p("Downregulation of cyclic adenosine monophosphate levels in leukocytes of hibernating captive black bears is similar to reported cyclic adenosine monophosphate findings in major depressive disorder"),
          actionButton(ns("Tsiouris_paper"), "Read Tsiouris and Flory (2023)")),
          card(
          p("Stress‐induced hyperphagia? Characterising the activity of the ghrelin axis in male rats with high anxiety behaviour"),
          actionButton(ns("Hornsby_paper"), "Read Hornsby et al. (2026)")),
          card(
          p("Paper4"),
          actionButton(ns("authors_paper"), "Read Authors)")),
        )
      )
    ),
    uiOutput(ns("selected_paper")),

    nav_buttons_ui(ns("nav_controls"))
  )
}

practice_your_turn_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns


##selector

selected_paper <- reactiveVal(NULL)

observeEvent(input$Geethavani_paper, { selected_paper("paper1") }, ignoreInit = TRUE)
observeEvent(input$Tsiouris_paper,  { selected_paper("paper2") }, ignoreInit = TRUE)
observeEvent(input$Hornsby_paper,   { selected_paper("paper3") }, ignoreInit = TRUE)
observeEvent(input$authors_paper,   { selected_paper("paper4") }, ignoreInit = TRUE)

output$selected_paper <- renderUI({
  key <- selected_paper()

  if (is.null(key) || length(key) != 1) {
    return(p("Please select a paper to read"))
  }

  key <- as.character(key)

  switch(
    key,
    "paper1" = your_turn_paper1_ui(ns("your_turn_paper1")),
    "paper2" = your_turn_paper2_ui(ns("your_turn_paper2")),
    "paper3" = your_turn_paper3_ui(ns("your_turn_paper3")),
    "paper4" = your_turn_paper4_ui(ns("your_turn_paper4")),
    p("Please select a paper to read")
  )
})

your_turn_paper1_server(
  "your_turn_paper1",
  process_markdown = process_markdown,
  process_rmd_fragment = process_rmd_fragment
)

your_turn_paper2_server(
  "your_turn_paper2",
  process_markdown = process_markdown,
  process_rmd_fragment = process_rmd_fragment
)

your_turn_paper3_server(
  "your_turn_paper3",
  process_markdown = process_markdown,
  process_rmd_fragment = process_rmd_fragment
)

your_turn_paper4_server(
  "your_turn_paper4",
  process_markdown = process_markdown,
  process_rmd_fragment = process_rmd_fragment
)


    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}