pause_flashcards_ui <- function(id) {
  ns <- NS(id)

  tagList(
    div(
      class = "flashcard",
      div(
        class = "flashcard-header",
        span(class = "flashcard-title", "Quiz"),
        uiOutput(ns("progress"))
      ),
      div(
        class = "flashcard-body",
        uiOutput(ns("card"))
      )
    )
  )
}

pause_flashcards_server <- function(id, dictionary) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    rv <- reactiveValues(i = 1, feedback = NULL, done = FALSE, state = "answering")

    get_answers <- function(d) {
      ans <- d[startsWith(names(d), "answer_")]
      setNames(names(ans), unlist(ans, use.names = FALSE))
    }

    output$progress <- renderUI({
      validate(need(is.list(dictionary) && length(dictionary) > 0, "Quiz not loaded."))

      if (isTRUE(rv$done)) {
        div(class = "flashcard-progress", paste0("Complete · ", length(dictionary), " cards"))
      } else {
        div(class = "flashcard-progress", paste0("Card ", rv$i, " / ", length(dictionary)))
      }
    })

    output$card <- renderUI({
      validate(need(is.list(dictionary) && length(dictionary) > 0, "Quiz not loaded. Check your dictionary file is sourced."))

      if (isTRUE(rv$done)) {
        return(
          tagList(
            div(class = "flashcard-success-title", "Nice work!"),
            div(class = "flashcard-success-body", "You’ve completed this Quiz."),
            div(
              class = "flashcard-footer",
              actionButton(ns("back"), "Back", class = "flashcard-btn flashcard-btn-secondary")
            )
          )
        )
      }

      d <- dictionary[[rv$i]]
      values <- get_answers(d)

      fig_ui <- NULL
      if (!is.null(d$figure_src) && nzchar(d$figure_src)) {
        fig_ui <- div(
          class = "flashcard-figure",
          tags$img(
            src = d$figure_src,
            alt = if (!is.null(d$figure_alt)) d$figure_alt else "",
            class = "flashcard-figure-img"
          ),
          if (!is.null(d$figure_caption)) div(class = "flashcard-figure-caption", d$figure_caption)
        )
      }

      check_label <- if (identical(rv$state, "correct_ready_next")) "Next" else "Check"

      tagList(
        fig_ui,
        div(class = "flashcard-question", d$question),
        shinyWidgets::radioGroupButtons(
          inputId = ns("choice"),
          label = NULL,
          choices = values,
          selected = character(0),
          status = "secondary",
          justified = TRUE,
          checkIcon = list(yes = tags$i(class = "fa fa-check"))
        ),
        div(
          class = "flashcard-footer",
          actionButton(ns("back"), "Back", class = "flashcard-btn flashcard-btn-secondary"),
          actionButton(ns("check"), check_label, class = "flashcard-btn flashcard-btn-primary")
        ),
        if (!is.null(rv$feedback)) rv$feedback
      )
    })

    observeEvent(input$back, {
      req(is.list(dictionary), length(dictionary) > 0)

      if (isTRUE(rv$done)) {
        rv$done <- FALSE
        rv$i <- length(dictionary)
        rv$feedback <- NULL
        rv$state <- "answering"
        return()
      }

      if (rv$i > 1) {
        rv$i <- rv$i - 1
        rv$feedback <- NULL
        rv$state <- "answering"
        shinyWidgets::updateRadioGroupButtons(session, "choice", selected = character(0))
      }
    })

    observeEvent(input$check, {
      req(is.list(dictionary), length(dictionary) > 0)

      if (identical(rv$state, "correct_ready_next")) {
        if (rv$i < length(dictionary)) {
          rv$i <- rv$i + 1
          rv$feedback <- NULL
          rv$state <- "answering"
          shinyWidgets::updateRadioGroupButtons(session, "choice", selected = character(0))
        } else {
          rv$done <- TRUE
          rv$feedback <- NULL
          rv$state <- "answering"
        }
        return()
      }

      req(input$choice)

      d <- dictionary[[rv$i]]

      if (identical(input$choice, d$correct)) {
        rv$feedback <- div(
          class = "flashcard-feedback flashcard-correct",
          div(class = "flashcard-feedback-title", "Nice - correct."),
          div(class = "flashcard-feedback-body", d$correct_description)
        )
        rv$state <- "correct_ready_next"
      } else {
        rv$feedback <- div(
          class = "flashcard-feedback flashcard-wrong",
          div(class = "flashcard-feedback-title", "Not quite."),
          div(class = "flashcard-feedback-body", d$incorrect_helper)
        )
        rv$state <- "answering"
      }
    })
  })
}
