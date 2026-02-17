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
          tags$p("Marin, I. A., Goertz, J. E., Ren, T., Rich, S. S., Onengut-Gumuscu, S., Farber, E., Wu, M., Overall, C. C., Kipnis, J., & Gaultier, A."),
          tags$p("Scientific Reports, 7(1), 43859."),
          tags$p("2017"),
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
          tags$hr(),
          tags$br()
          ),
          uiOutput(ns("mystery_intro1")),
          uiOutput(ns("practice_intro1_mystery1_click"))
        
      ),
        
      
        div(
          class = "paper-box",
          tags$div(
          tags$h3("Caffeine acts through neuronal adenosine A2A receptors to prevent mood and memory dysfunction triggered by chronic stress"),
          tags$p("Kaster, M. P., Machado, N. J., Silva, H. B., Nunes, A., Ardais, A. P., Santana, M., Baqi, Y., Müller, C. E., Rodrigues, A. L. S., Porciúncula, L. O., Chen, J. F., Tomé, Â. R., Agostinho, P., Canas, P. M., & Cunha, R. A."),
          tags$p("Proceedings of the National Academy of Sciences of the United States of America, 112(25), 7833–7838."),
          tags$p("2015"),
          tags$a(
            href = "https://doi.org/10.1073/pnas.1423088112",
            target = "_blank",
            rel = "noopener noreferrer",
            class = "ps-guide-paper-link",
            tagList(
              "Go to paper",
              bs_icon("box-arrow-up-right")
            )
          ),
          tags$hr(),
          tags$br()
          ),
          uiOutput(ns("mystery_intro2")),
          uiOutput(ns("practice_intro2_mystery1_click"))
        ),
    
        div(
          class = "paper-box",
          tags$div(
          tags$h3("Genome-wide association analyses identify 44 risk variants and refine the genetic architecture of major depression"),
          tags$p("Wray, N. R., Ripke, S., Mattheisen, M., Trzaskowski, M., Byrne, E. M., Abdellaoui, A., Adams, M. J., Agerbo, E., Air, T. M., Andlauer, T. M. F., Bacanu, S.-A., Bækvad-Hansen, M., Beekman, A. F. T., Bigdeli, T. B., Binder, E. B., Blackwood, D. R. H., Bryois, J., Buttenschøn, H. N., Bybjerg-Grauholm, J., ... Sullivan, P. F."),
          tags$p("Nature Genetics, 50(5), 668–681."),
          tags$p("2018"),
          tags$a(
            href = "https://doi.org/10.1038/s41588-018-0090-3",
            target = "_blank",
            rel = "noopener noreferrer",
            class = "ps-guide-paper-link",
            tagList(
              "Go to paper",
              bs_icon("box-arrow-up-right")
            )
          ),
          tags$hr(),
          tags$br()

          ),
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