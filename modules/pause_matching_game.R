matching_game_ui <- function(id) {
  ns <- NS(id)

  layout_columns(
    col_widths = c(6, 6),

    card(
      card_header("Questions"),
      uiOutput(ns("q_buttons"))
    ),

    card(
      card_header("Methods"),
      uiOutput(ns("a_buttons"))
    )
  )
}


matching_game_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    pairs <- list(
      q_nanotag = "a_nanotag",
      q_elisa_cort = "a_elisa_cort",
      q_weight = "a_weight"
    )

    q_text <- list(
      q_weight = "Does interrupting isolation reduce weight gain versus only isolation?",
      q_nanotag = "How much do isolated rats move?",
      q_elisa_cort = "Does interrupting isolation make the rats less stressed?"
    )

    a_text <- list(
      a_elisa_cort = "Measure corticosterone concentrations in the plasma",
      a_nanotag = "Implant a device called nanotag",
      a_weight = "Measure food intake and weight gain"
    )

    q_ids <- names(q_text)
    a_ids <- names(a_text)

    selected_q <- reactiveVal(NULL)
    matched <- reactiveVal(character(0))
    flash_wrong <- reactiveVal(NULL)

    class_for <- function(id) {
      if (id %in% matched()) return("btn-success")
      if (!is.null(flash_wrong()) && identical(id, flash_wrong())) return("btn-danger")
      if (!is.null(selected_q()) && identical(id, selected_q())) return("btn-primary")
      if (startsWith(id, "q_")) return("btn-outline-primary")
      "btn-outline-secondary"
    }

    output$q_buttons <- renderUI({
      tagList(lapply(q_ids, function(q) {
        actionButton(
          session$ns(q),
          q_text[[q]],
          class = paste("mg-btn", class_for(q))
        )
      }))
    })

    output$a_buttons <- renderUI({
      tagList(lapply(a_ids, function(a) {
        actionButton(
          session$ns(a),
          a_text[[a]],
          class = paste("mg-btn", class_for(a))
        )
      }))
    })

    lapply(q_ids, function(q) {
      observeEvent(input[[q]], {
        if (q %in% matched()) return()
        selected_q(q)
      }, ignoreInit = TRUE)
    })

    lapply(a_ids, function(a) {
      observeEvent(input[[a]], {
        if (a %in% matched()) return()

        q <- selected_q()
        if (is.null(q)) {
          showNotification("Choose a question first", type = "warning")
          return()
        }

        selected_q(NULL)

        if (identical(pairs[[q]], a)) {
          matched(unique(c(matched(), q, a)))
        } else {
          flash_wrong(a)
          shiny::invalidateLater(700, session)
          flash_wrong(NULL)
        }
      }, ignoreInit = TRUE)
    })
  })
}
