# anatomy_module_ui <- function(id) {
#   ns <- NS(id)

#   bslib::page_fluid(
#   h3("Anatomy of a Paper"),

#   bslib::layout_columns(
#     tags$div(
#       class = "vstack gap-3",
#       bslib::card(
#         card_header("Title"),
#         card_body(uiOutput(ns("anatomy_title_box1"))
#   )
      
#       ),
#       bslib::card(bslib::card_header("Authors")),
#       bslib::card(bslib::card_header("Abstract")),
#       bslib::card(bslib::card_header("Introduction"))
#     ),

#     bslib::card(
#       tags$img(src = "assets/1.png", class = "card-figure")
#     ),

#     col_widths = c(8, 4)
#   ),

#   bslib::layout_columns(
#     tags$div(
#       class = "vstack gap-3",
#       bslib::card(bslib::card_header("Methods")),
#       bslib::card(bslib::card_header("Results"))
#           ),

#     bslib::card(
#       tags$img(src = "assets/2.png", class = "card-figure")
#     ),

#     col_widths = c(8, 4)
#   ),

#     bslib::layout_columns(
#         tags$div(
#         class = "vstack gap-3",
#         bslib::card(bslib::card_header("Discussion")),
#         bslib::card(bslib::card_header("References"))
#         ),

#         bslib::card(
#         tags$img(src = "assets/3.png", class = "card-figure")
#         ),

#         col_widths = c(8, 4)
#     ),

#       nav_buttons_ui(ns("nav_controls"))
#     )
# }

anatomy_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    h3("Anatomy of a Paper"),

    bslib::layout_columns(
      col_widths = c(4, 4, 4),

      bslib::card(
        bslib::card_header("Title"),
        bslib::card_body(
          uiOutput(ns("anatomy_title_box1"))
        )
      ),

      bslib::card(bslib::card_header("Authors"),
      bslib::card_body(
          uiOutput(ns("anatomy_authors_box2"))
        )),
      bslib::card(bslib::card_header("Abstract"),
      bslib::card_body(uiOutput(ns("anatomy_abstract_box3")))),

      bslib::card(bslib::card_header("Introduction")),
      bslib::card(bslib::card_header("Methods")),
      bslib::card(bslib::card_header("Results")),

      bslib::card(bslib::card_header("Discussion")),
      bslib::card(bslib::card_header("References")),
      bslib::card(bslib::card_header("Supplementary"))
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


  nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}