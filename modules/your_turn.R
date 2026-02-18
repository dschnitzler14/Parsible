practice_your_turn_module_ui <- function(id) {
  ns <- NS(id)
  bslib::page_fluid(
    div(
      class = "ps-guide ps-intro",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Your Turn!"),
            uiOutput(ns("your_turn_intro_text"))
          )
        )
      ),
    
    
    div(
      class = "ps-guide ps-what-paper",
    bslib::layout_columns(
        col_widths = c(3, 3, 3, 3),
        class = "ps-step-grid ps-what-paper-grid",

        bslib::card(
          class = "ps-step ps-step-1 ps-topic-card",
          `data-card-id` = "what-paper-21",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("paper1"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "1"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Effect of Caffeine on Heart Rate and Blood Pressure"),
                  tags$p(class = "ps-topic-subtitle", "Geethavani et al. (2014)")
                )
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Read this paper")
              )
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-2 ps-topic-card",
          `data-card-id` = "what-paper-22",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("paper2"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "2"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Forced treadmill exercise in the male rat: Effect on food intake and c-Fos expression"),
                  tags$p(class = "ps-topic-subtitle", "Eccles et al. (2025)")
                )
              ),
              tags$div(
                class = "ps-tool-cta",
                bs_icon("book"),
                tags$span("Read this paper")
              )
            )
          )
        ),
        bslib::card(
          class = "ps-step ps-step-2 ps-topic-card",
          `data-card-id` = "what-paper-23",
          bslib::card_body(
            class = "ps-topic-click",
            #actionButton(ns("paper3"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "3"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Coming Soon"),
                  tags$p(class = "ps-topic-subtitle", "")
                )
              ),
            
            )
          )
        ),
        bslib::card(
          class = "ps-step ps-step-2 ps-topic-card",
          `data-card-id` = "what-paper-24",
          bslib::card_body(
            class = "ps-topic-click",
            #actionButton(ns("paper4"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "4"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Coming Soon"),
                  tags$p(class = "ps-topic-subtitle", "")
                )
              ),
            
            )
          )
        ),
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

output$your_turn_intro_text <- renderUI({
  process_markdown("your_turn/your_turn_instructions.md")
})

##selector

selected_paper <- reactiveVal(NULL)

observeEvent(input$paper1, { selected_paper("paper1") }, ignoreInit = TRUE)
observeEvent(input$paper2,  { selected_paper("paper2") }, ignoreInit = TRUE)
observeEvent(input$paper3,   { selected_paper("paper3") }, ignoreInit = TRUE)
observeEvent(input$paper4,   { selected_paper("paper4") }, ignoreInit = TRUE)

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