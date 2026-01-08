anatomy_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    h3("Anatomy of a Paper"),

    bslib::card(
      class = "deck-controls deck-controls-main mb-3",
      bslib::card_body(
        tags$div(
          class = "deck-nav-single",
          actionButton(
            ns("prev_card_top"),
            label = HTML("&#8592; Previous Card"),
            class = "deck-btn deck-btn-prev"
          ),
          actionButton(
            ns("next_card_top"),
            label = HTML("Next Card &#8594;"),
            class = "deck-btn deck-btn-next"
          )
        )
      )
    ),

    bslib::card(
      class = "deck-controls deck-controls-pills mb-3",
      bslib::card_body(
        uiOutput(ns("deck_pills"))
      )
    ),

    tags$div(
      class = "paper-stack-outer",
      uiOutput(ns("deck_card"))
    ),

    bslib::card(
      class = "deck-controls deck-controls-main mb-3",
      bslib::card_body(
        tags$div(
          class = "deck-nav-single",
          actionButton(
            ns("prev_card_bottom"),
            label = HTML("&#8592; Previous Card"),
            class = "deck-btn deck-btn-prev"
          ),
          actionButton(
            ns("next_card_bottom"),
            label = HTML("Next Card &#8594;"),
            class = "deck-btn deck-btn-next"
          )
        )
      )
    ),

    nav_buttons_ui(ns("nav_controls"))
  )
}

anatomy_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {

    sections <- list(
      list(key = "title",        label = "Title",         file = "anatomy/title.md",               paper_class = "paper-1"),
      list(key = "authors",      label = "Authors",       file = "anatomy/authors.md",             paper_class = "paper-2"),
      list(key = "abstract",     label = "Abstract",      file = "anatomy/abstract.md",            paper_class = "paper-3"),
      list(key = "intro",        label = "Introduction",  file = "anatomy/introduction_paper.md",  paper_class = "paper-4"),
      list(key = "methods",      label = "Methods",       file = "anatomy/methods.md",             paper_class = "paper-5"),
      list(key = "results",      label = "Results",       file = "anatomy/results.md",             paper_class = "paper-6"),
      list(key = "discussion",   label = "Discussion",    file = "anatomy/discussion.md",          paper_class = "paper-7"),
      list(key = "references",   label = "References",    file = "anatomy/references.md",          paper_class = "paper-8"),
      list(key = "supp",         label = "Supplementary", file = "anatomy/supplemental.md",        paper_class = "paper-9")
    )

    i <- shiny::reactiveVal(1)

    shiny::observeEvent(input$prev_card_top, {
      shiny::isolate({
        new_i <- i() - 1
        if (new_i < 1) new_i <- 1
        i(new_i)
      })
    })

    shiny::observeEvent(input$next_card_top, {
      shiny::isolate({
        new_i <- i() + 1
        if (new_i > length(sections)) new_i <- length(sections)
        i(new_i)
      })
    })

    shiny::observeEvent(input$prev_card_bottom, {
      shiny::isolate({
        new_i <- i() - 1
        if (new_i < 1) new_i <- 1
        i(new_i)
      })
    })

    shiny::observeEvent(input$next_card_bottom, {
      shiny::isolate({
        new_i <- i() + 1
        if (new_i > length(sections)) new_i <- length(sections)
        i(new_i)
      })
    })

    output$deck_card <- shiny::renderUI({
      s <- sections[[i()]]
      tags$div(
        class = paste("paper-stack", s$paper_class),
        bslib::card(
          class = "paper-top",
          bslib::card_header(s$label),
          bslib::card_body(process_markdown(s$file))
        )
      )
    })

    output$deck_pills <- shiny::renderUI({
      cur <- i()
      tags$div(
        class = "deck-pills",
        lapply(seq_along(sections), function(k) {
          actionLink(
            session$ns(paste0("pill_", k)),
            label = sections[[k]]$label,
            class = paste("deck-pill-title", if (k == cur) "active" else "")
          )
        })
      )
    })

    lapply(seq_along(sections), function(k) {
      shiny::observeEvent(input[[paste0("pill_", k)]], {
        i(k)
      }, ignoreInit = TRUE)
    })

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
  })
}

