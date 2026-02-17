practice_intro_mystery_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("mystery_intro_text"))
        )
      )
    ),
    
        
        div(
          class = "paper-box", 
        tags$div(
          tags$h3("Microbiota alteration is associated with the development of stress-induced despair behavior "),
          tags$h4("Marin, I. A., Goertz, J. E., Ren, T., Rich, S. S., Onengut-Gumuscu, S., Farber, E., Wu, M., Overall, C. C., Kipnis, J., & Gaultier, A."),
          tags$h4("Scientific Reports, 7(1), 43859."),
          tags$h4("2017"),
          tags$a(
            href = "https://doi.org/10.1038/srep43859",
            target = "_blank",
            rel = "noopener noreferrer",
            class = "ps-guide-paper-link",
            tagList(
              "Go to paper",
              bs_icon("box-arrow-up-right")
            )
          ),
          ),
          uiOutput(ns("mystery_intro1")),
          uiOutput(ns("practice_intro1_mystery1_click"))
        
      ),
        
      
        div(
          class = "paper-box",
          uiOutput(ns("mystery_intro2")),
          uiOutput(ns("practice_intro2_mystery1_click"))
        ),
    
        div(
          class = "paper-box",
          uiOutput(ns("mystery_intro3")),
          uiOutput(ns("practice_intro3_mystery1_click"))
        ),
      
  )
}

practice_intro_mystery_module_server <- function(id, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

  md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }

   output$mystery_intro_text <- renderUI({
      md_ui("english/practice/practice1_mystery/mystery_intro_section_intro.md")
    })


    output$mystery_intro1 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro1.Rmd")
    })


  observeEvent(input$practice_intro1_mystery1, {
  output$practice_intro1_mystery1_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Good Job! The authors describe a knowledge gap relating to familial indidence of depression")
    )
  })
})

output$mystery_intro2 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro2.Rmd")
    })

  observeEvent(input$practice_intro2_mystery1, {
  output$practice_intro2_mystery1_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Yes! The molecular targets of caffeine in relation to having beneficial effects of depression are not known.")
    )
  })
})

output$mystery_intro3 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro3.Rmd")
    })

  observeEvent(input$practice_intro3_mystery1, {
  output$practice_intro3_mystery1_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Well Done!")
    )
  })
})

  })
}