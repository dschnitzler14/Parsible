anatomy_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    h3("Anatomy of a Paper"),

    bslib::layout_columns(
      col_widths = c(6, 6),

      bslib::card(
        bslib::card_header("Title"),
        bslib::card_body(
          uiOutput(ns("anatomy_title_box1"))
        )
      ),

      bslib::card(bslib::card_header("Authors"),
      bslib::card_body(uiOutput(ns("anatomy_authors_box2")))),

      bslib::card(bslib::card_header("Abstract"),
      bslib::card_body(uiOutput(ns("anatomy_abstract_box3")))),

      bslib::card(bslib::card_header("Introduction"),
      bslib::card_body(uiOutput(ns("anatomy_introduction_box4")))),

      bslib::card(bslib::card_header("Methods"),
      bslib::card_body(
          uiOutput(ns("anatomy_methods_box5")))),

      bslib::card(bslib::card_header("Results"),
      bslib::card_body(uiOutput(ns("anatomy_results_box6")))),

      bslib::card(bslib::card_header("Discussion"),
      bslib::card_body(uiOutput(ns("anatomy_discussion_box7")))),

      bslib::card(bslib::card_header("References"),
      bslib::card_body(uiOutput(ns("anatomy_references_box8")))),

      bslib::card(bslib::card_header("Supplementary"),
      bslib::card_body(uiOutput(ns("anatomy_supplementary_box9")))),
    
  ),
    nav_buttons_ui(ns("nav_controls"))
  )
}

anatomy_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns


output$anatomy_title_box1 <- renderUI({
        process_markdown("anatomy/title.md")
      })

output$anatomy_authors_box2 <- renderUI({
        process_markdown("anatomy/authors.md")
      })

output$anatomy_abstract_box3 <- renderUI({
        process_markdown("anatomy/abstract.md")
      })

output$anatomy_introduction_box4 <- renderUI({
      process_markdown("anatomy/introduction_paper.md")
      })

output$anatomy_methods_box5 <- renderUI({
        process_markdown("anatomy/methods.md")
      })

output$anatomy_results_box6 <- renderUI({
        process_markdown("anatomy/results.md")
      })

output$anatomy_discussion_box7 <- renderUI({
        process_markdown("anatomy/discussion.md")
      })

output$anatomy_references_box8 <- renderUI({
        process_markdown("anatomy/references.md")
      })

output$anatomy_supplementary_box9 <- renderUI({
        process_markdown("anatomy/supplemental.md")
      })


  nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}