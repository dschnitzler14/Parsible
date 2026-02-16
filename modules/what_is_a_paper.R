what_is_a_paper_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide ps-what-paper",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("What is a scientific paper?"),
            textOutput(ns("section_intro"))
          )
        )
      ),

      bslib::layout_columns(
        col_widths = c(4, 4, 4),
        class = "ps-step-grid ps-what-paper-grid",

        bslib::card(
          class = "ps-step ps-step-1 ps-topic-card",
          `data-card-id` = "what-paper-1",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box1"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "1"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("So, what actually is a Paper?"),
                  tags$p(class = "ps-topic-subtitle", "Papers come in all shapes and sizes.")
                )
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
          `data-card-id` = "what-paper-2",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box2"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "2"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("If it’s in a Paper, it must be True!"),
                  tags$p(class = "ps-topic-subtitle", "Why publication isn’t a guarantee of an absolute truth.")
                )
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
          class = "ps-step ps-step-3 ps-topic-card",
          `data-card-id` = "what-paper-3",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box3"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "3"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("How does Scientific Publishing Work?"),
                  tags$p(class = "ps-topic-subtitle", "Peer review, revisions, journals, and incentives.")
                )
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
          class = "ps-step ps-step-4 ps-topic-card",
          `data-card-id` = "what-paper-4",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box4"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "4"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Different Types of Publication"),
                  tags$p(class = "ps-topic-subtitle", "Preprints, articles, reviews, and more.")
                )
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
          class = "ps-step ps-step-5 ps-topic-card",
          `data-card-id` = "what-paper-5",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box5"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "5"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Problems with Scientific Publishing"),
                  tags$p(class = "ps-topic-subtitle", "Bias, incentives, paywalls, and reproducibility.")
                )
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
          class = "ps-step ps-step-6 ps-topic-card",
          `data-card-id` = "what-paper-6",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box6"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "6"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("What is Open Science?"),
                  tags$p(class = "ps-topic-subtitle", "Science should be collaborative - enter Open Science Practices")
                )
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
          class = "ps-step ps-step-7 ps-topic-card",
          `data-card-id` = "what-paper-7",
          bslib::card_body(
            class = "ps-topic-click",
            actionButton(ns("open_box7"), label = NULL, class = "ps-topic-btn"),
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title ps-topic-title",
                tags$span(class = "ps-step-num", "7"),
                tags$div(
                  class = "ps-topic-title-text",
                  tags$h3("Good ≠ Perfect"),
                  tags$p(class = "ps-topic-subtitle", "No study, model, or paper is ever perfect, that doesn't mean it isn't good.")
                )
              ),
              tags$div(
  class = "ps-tool-cta",
  bs_icon("book"),
  tags$span("Open chapter")
)
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


what_is_a_paper_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {

    output$section_intro <- renderText({
      "Click a chapter to open it in a modal. Read in small chunks, then close and pick the next one."
    })

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

    observeEvent(input$open_box1, {
      open_md_modal(
        "So, what actually is a Paper?",
        "A paper is a structured argument, not a fact dump.",
        "what_is_a_paper/what_is_a_paper1.md"
      )
    }, ignoreInit = TRUE)

    observeEvent(input$open_box2, {
      open_md_modal(
        "If it’s in a Paper, it must be True!",
        "Why publication isn’t a guarantee of correctness.",
        "what_is_a_paper/what_is_a_paper2.md"
      )
    }, ignoreInit = TRUE)

    observeEvent(input$open_box3, {
      open_md_modal(
        "How does Scientific Publishing Work?",
        "Peer review, revisions, journals, and incentives.",
        "what_is_a_paper/what_is_a_paper3.md"
      )
    }, ignoreInit = TRUE)

    # observeEvent(input$open_box4, {
    #   open_md_modal(
    #     "History of Publishing",
    #     "How we got from letters to modern journals.",
    #     "what_is_a_paper/what_is_a_paper4.md"
    #   )
    # }, ignoreInit = TRUE)

    observeEvent(input$open_box4, {
      open_md_modal(
        "Different Types of Publication",
        "Preprints, articles, reviews, and more.",
        "what_is_a_paper/what_is_a_paper5.md"
      )
    }, ignoreInit = TRUE)

    observeEvent(input$open_box5, {
      open_md_modal(
        "Problems with Scientific Publishing",
        "Bias, incentives, paywalls, and reproducibility.",
        "what_is_a_paper/what_is_a_paper6.md"
      )
    }, ignoreInit = TRUE)

    observeEvent(input$open_box6, {
      open_md_modal(
        "What is Open Science?",
        "Sharing methods, data, code, and more.",
        "what_is_a_paper/what_is_a_paper7.md"
      )
    }, ignoreInit = TRUE)

    observeEvent(input$open_box7, {
      open_md_modal(
        "Good ≠ Perfect",
        "How to read critically without being a perfectionist.",
        "what_is_a_paper/what_is_a_paper8.md"
      )
    }, ignoreInit = TRUE)

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
  })
}
