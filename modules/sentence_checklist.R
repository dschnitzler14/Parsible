sentence_checklist_ui <- function(id) {
  ns <- NS(id)
  tagList(
    tags$div(
      class = "lecturi-checklist",
      tags$div(class = "lecturi-checklist__input", uiOutput(ns("checklist_ui"))),
      tags$div(
        class = "lecturi-checklist__actions",
        actionButton(
          inputId = ns("submit_checklist"),
          label = "Submit Answers",
          class = "btn btn-primary lecturi-checklist__submit"
        )
      ),
      tags$div(class = "lecturi-checklist__feedback", uiOutput(ns("feedback")))
    )
  )
}

# sentence_checklist_server <- function(
#   id,
#   dictionary_names = dictionary_names,
#   dictionary_values = dictionary_values,
#   dictionary_correct = dictionary_correct,
#   label = "Tick the correct statements"
# ) {
#   moduleServer(id, function(input, output, session) {
#     ns <- session$ns

#     output$checklist_ui <- renderUI({
#       tags$div(
#         class = "lecturi-checklist__group",
#         checkboxGroupInput(
#           inputId = ns("checklist"),
#           label = tags$span(label, class = "lecturi-checklist__label"),
#           choiceNames = dictionary_names,
#           choiceValues = dictionary_values,
#           selected = character(0),
#           inline = FALSE,
#           width = "100%"
#         )
#       )
#     })

#     output$feedback <- renderUI(NULL)

#     observeEvent(input$submit_checklist, {
#       selected_options <- input$checklist %||% character(0)

#       output$feedback <- renderUI({
#         all_correct <- length(selected_options) > 0 && setequal(selected_options, dictionary_correct)
#         some_correct <- length(intersect(selected_options, dictionary_correct)) > 0 && !all_correct

#         if (length(selected_options) == 0) {
#           div(class = "alert alert-warning lecturi-alert", "No statements selected.")
#         } else if (all_correct) {
#           div(class = "alert alert-success lecturi-alert", "All correct statements selected!")
#         } else if (some_correct) {
#           div(class = "alert alert-info lecturi-alert", "Some correct statements selected, but not all.")
#         } else {
#           div(class = "alert alert-danger lecturi-alert", "No correct statements selected.")
#         }
#       })
#     })
#   })
# }

sentence_checklist_server <- function(
  id,
  dictionary,
  dictionary_correct,
  label = "Tick the correct statements",
  randomise = TRUE
) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    if (is.null(names(dictionary)) || any(names(dictionary) == "")) {
      stop("`dictionary` must be a named character vector: names = labels, values = IDs.")
    }

    dict <- dictionary
    if (isTRUE(randomise)) dict <- sample(dict)

    output$checklist_ui <- renderUI({
      tags$div(
        class = "lecturi-checklist__group",
        checkboxGroupInput(
          inputId = ns("checklist"),
          label = tags$span(label, class = "lecturi-checklist__label"),
          choiceNames = names(dict),
          choiceValues = unname(dict),
          selected = character(0),
          inline = FALSE,
          width = "100%"
        )
      )
    })

    output$feedback <- renderUI(NULL)

    observeEvent(input$submit_checklist, {
      selected_options <- input$checklist %||% character(0)

      output$feedback <- renderUI({
        all_correct <- length(selected_options) > 0 && setequal(selected_options, dictionary_correct)
        some_correct <- length(intersect(selected_options, dictionary_correct)) > 0 && !all_correct

        if (length(selected_options) == 0) {
          div(class = "alert alert-warning lecturi-alert", "No statements selected.")
        } else if (all_correct) {
          div(class = "alert alert-success lecturi-alert", "All correct statements selected!")
        } else if (some_correct) {
          div(class = "alert alert-info lecturi-alert", "Some correct statements selected, but not all.")
        } else {
          div(class = "alert alert-danger lecturi-alert", "No correct statements selected.")
        }
      })
    })
  })
}

