strategies_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    layout_column_wrap(
    width = 1,
    card(
      full_screen = TRUE,
      card_header("Reading papers"),
      card_body(
        navset_tab(
          id = "reading_tabs",
          nav_panel(
            title = "How to read advice",
            layout_sidebar(
              sidebar = sidebar(
                title = "Looking for advice?",
              ),
              card(
                card_header("Advice"),
                card_body(
                  uiOutput(ns("strategies_advice_box1"))
                )
              )
            )
          ),
          nav_panel(
            title = "Title and Abstract",
            layout_sidebar(
              sidebar = sidebar(
                title = "Title and Abstract",
                div(
                  class = "sb-white",
                  tags$h4("Notes"),
                uiOutput(ns("strategies_title_abstract1_click")),
                uiOutput(ns("strategies_title_abstract2_click")),
                uiOutput(ns("strategies_title_abstract3_click")),
                uiOutput(ns("strategies_title_abstract4_click"))
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("Checklist"),
                  checkboxGroupInput( 
                      "checkbox_group_title_abstract", 
                      "Checkbox group", 
                      c( 
                        "A" = "a", 
                        "B" = "b", 
                        "C" = "c" 
                      ) 
                    ), 
                ),
                div(
                  class = "sb-white",
                  tags$h4("Rating"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = "intro_rating",
                      label = "What did you think of the Title",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choices = c(
                        "Appropriate",
                        "Slightly Misleading",
                        "Exaggerated"
                      )
                    )
                  )
                ),
              ),
              card(
                card_header("Title and Abstract"),
                card_body(
                  div(
                      class = "paper-box",
                      uiOutput(ns("strategies_title_abstract"))
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Introduction",
            layout_sidebar(
              sidebar = sidebar(
                class = "sidebar-notes",
                title = "Introduction",
                div(
                  class = "sb-white",
                  tags$h4("Notes"),
                  uiOutput(ns("strategies_introduction1_click")),
                  uiOutput(ns("strategies_introduction2_click")),
                  uiOutput(ns("strategies_introduction3_click")),
                  uiOutput(ns("strategies_introduction4_click"))
                ),
                
                div(
                  class = "sb-notepad",
                  tags$h4("Checklist"),
                  checkboxGroupInput( 
                      "checkbox_group_introduction", 
                      "Checkbox group", 
                      c( 
                        "A" = "a", 
                        "B" = "b", 
                        "C" = "c" 
                      ) 
                    ), 
                ),
                
              ),
              card(
                card_header("Introduction"),
                card_body(
                  div(
                      class = "paper-box",
                      uiOutput(ns("strategies_introduction"))
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Methods",
            layout_sidebar(
              sidebar = sidebar(
                title = "Methods",
                p("notes and paperstars")
              ),
              card(
                card_header("Methods"),
                card_body(
                  div(
                      class = "paper-box",
                      uiOutput(ns("strategies_methods"))
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Results",
            layout_sidebar(
              sidebar = sidebar(
                title = "Results",
                p("notes and paperstars")
              ),
              card(
                card_header("Results"),
                card_body(
                  p("Lorem Ipsum Dolor Sit Amet")
                )
              )
            )
          ),
          nav_panel(
            title = "Discussion",
            layout_sidebar(
              sidebar = sidebar(
                title = "Discussion",
                p("notes and paperstars")
              ),
              card(
                card_header("Discussion"),
                card_body(
                  p("Lorem Ipsum Dolor Sit Amet")
                )
              )
            )
          ),
          nav_panel(
            title = "References",
            layout_sidebar(
              sidebar = sidebar(
                title = "References",
                p("notes and paperstars")
              ),
              card(
                card_header("References"),
                card_body(
                  p("Lorem Ipsum Dolor Sit Amet")
                )
              )
            )
          ),
          nav_panel(
            title = "Supplementary Material",
            layout_sidebar(
              sidebar = sidebar(
                title = "Supplementary Material",
                p("notes and paperstars")
              ),
              card(
                card_header("Supplementary Material"),
                card_body(
                  p("Lorem Ipsum Dolor Sit Amet")
                )
              )
            )
          )
        )
      )
    )
  ),
    
  nav_buttons_ui(ns("nav_controls"))

)
}

strategies_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }


  output$strategies_advice_box1 <- renderUI({
        process_markdown("strategies/now_what_start.md")
      })


# Title and Abstract
  
  output$strategies_title_abstract <- renderUI({
  md_ui("english/strategies/title_abstract_strategy.Rmd")
})



observeEvent(input$abstract1, {
  output$strategies_title_abstract1_click <- renderUI({
    tagList(
      tags$h4("Clicked 1"),
    )
  })
})

observeEvent(input$abstract2, {
  output$strategies_title_abstract2_click <- renderUI({
    tagList(
      tags$h4("Clicked 2"),
    )
  })
})

observeEvent(input$abstract3, {
  output$strategies_title_abstract3_click <- renderUI({
    tagList(
      tags$h4("Clicked 3"),
    )
  })
})

observeEvent(input$abstract4, {
  output$strategies_title_abstract4_click <- renderUI({
    tagList(
      tags$h4("Clicked 4"),
    )
  })
})

# Intro

output$strategies_introduction <- renderUI({
    md_ui("english/strategies/introduction_strategy.Rmd")
  })

observeEvent(input$intro1, {
  output$strategies_introduction1_click <- renderUI({
    tagList(
      tags$h4("Clicked: intro1"),
    )
  })
})

# Methods
output$strategies_methods <- renderUI({
    md_ui("english/strategies/methods_strategy.Rmd")
  })

  # nav buttons

   nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

  })
}
