practice_what_does_not_belong_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("wrong_section_intro_text"))
        )
      )
    ),
    card(
    card_header("Introduction 1"),
    card_body(
      div(
          class = "strategies-main",
          div(
            class = "paper-box",
            uiOutput(ns("practice_wrong_section1_text")),
            uiOutput(ns("practice_wrong_section1_click"))

          ),
        )
    )
  ),
  card(
  card_header("Introduction 2"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section2_text")),
        uiOutput(ns("practice_wrong_section2_click"))
      )
    )
  )
),

card(
  card_header("Methods 1"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section3_text")),
        uiOutput(ns("practice_wrong_section3_click"))
      )
    )
  )
),

card(
  card_header("Methods 2"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section4_text")),
        uiOutput(ns("practice_wrong_section4_click"))
      )
    )
  )
),

card(
  card_header("Results 1"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section5_text")),
        uiOutput(ns("practice_wrong_section5_click"))
      )
    )
  )
),

card(
  card_header("Results 2"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section6_text")),
        uiOutput(ns("practice_wrong_section6_click"))
      )
    )
  )
),

card(
  card_header("Discussion 1"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section7_text")),
        uiOutput(ns("practice_wrong_section7_click"))
      )
    )
  )
),

card(
  card_header("Discussion 2"),
  card_body(
    div(
      class = "strategies-main",
      div(
        class = "paper-box",
        uiOutput(ns("practice_wrong_section8_text")),
        uiOutput(ns("practice_wrong_section8_click"))
      )
    )
  )
)

    
  )
}

practice_what_does_not_belong_module_server <- function(id, process_rmd_fragment, process_markdown) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns
    
  md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }

output$wrong_section_intro_text <- renderUI({
    process_markdown("practice/practice2_wrong_section/wrong_section_intro.md")
  })

  output$practice_wrong_section1_text <- renderUI({
    md_ui("english/practice/practice2_wrong_section/wrong_section1.Rmd")
  })


observeEvent(input$practice_wrong_section1, {
  output$practice_wrong_section1_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section2_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section2.Rmd")
})

observeEvent(input$practice_wrong_section2, {
  output$practice_wrong_section2_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section3_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section3.Rmd")
})

observeEvent(input$practice_wrong_section3, {
  output$practice_wrong_section3_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section4_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section4.Rmd")
})

observeEvent(input$practice_wrong_section4, {
  output$practice_wrong_section4_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section5_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section5.Rmd")
})

observeEvent(input$practice_wrong_section5, {
  output$practice_wrong_section5_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section6_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section6.Rmd")
})

observeEvent(input$practice_wrong_section6, {
  output$practice_wrong_section6_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section7_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section7.Rmd")
})

observeEvent(input$practice_wrong_section7, {
  output$practice_wrong_section7_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

output$practice_wrong_section8_text <- renderUI({
  md_ui("english/practice/practice2_wrong_section/wrong_section8.Rmd")
})

observeEvent(input$practice_wrong_section8, {
  output$practice_wrong_section8_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good job! This belongs in the Methods section.")
    )
  })
})

  })
}