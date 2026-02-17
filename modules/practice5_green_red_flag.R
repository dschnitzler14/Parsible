practice_green_red_flag_module_ui <- function(id) {
  ns <- NS(id)

  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("green_red_flag_intro_text"))
        )
      )
    ),

   card(
      card_body(
        div(
          class = "strategies-main",
    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_1"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Sample size was determined a priori using a power analysis (α = 0.05, power = 0.8) based on effect sizes reported in previous studies.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_2"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Animals were randomly assigned to experimental groups using a computer-generated sequence, and investigators were blinded during data collection and analysis.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_3"), NULL, choiceNames = list("✅", "🚩", "⚠️"), 
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Statistical significance was assessed using p-values, as indicated in the figures.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_4"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Group sizes were chosen based on feasibility and consistency with previous studies.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_5"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("All statistical analyses were performed using standard parametric tests.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_6"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Treatment increased response amplitude compared with controls (mean difference = 1.8 units, t(28) = 2.45, p = 0.02).")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_7"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Several secondary analyses showed similar trends.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_8"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Results for outcomes showing no group differences are not shown.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_9"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("A strong trend toward an increase was observed, although this did not reach statistical significance.")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(ns("flag_10"), NULL,   choiceNames = list("✅", "🚩", "⚠️"),
  choiceValues = list("1", "2", "3"), inline = TRUE),
      p("Although the observed effects are consistent with a direct action of the intervention, indirect effects mediated by changes in overall activity or physiology cannot be excluded.")
    ),

    actionButton(
      ns("submit_flags"),
      "Submit",
      class = "btn btn-primary lecturi-checklist__submit"
    ),
   

    uiOutput(ns("flag_results"))
         )
      )
   ),
  )
}

practice_green_red_flag_module_server <- function(id, dictionary_correct, process_markdown) {
  moduleServer(id, function(input, output, session) {


output$green_red_flag_intro_text <- renderUI({
  process_markdown("practice/practice5_red_green_flag/practice5_green_red_flag_instructions_text.md")
})
    observeEvent(input$submit_flags, {
      results <- list(
        flag_1  = input$flag_1,
        flag_2  = input$flag_2,
        flag_3  = input$flag_3,
        flag_4  = input$flag_4,
        flag_5  = input$flag_5,
        flag_6  = input$flag_6,
        flag_7  = input$flag_7,
        flag_8  = input$flag_8,
        flag_9  = input$flag_9,
        flag_10 = input$flag_10
      )

      results_vec <- unlist(results, use.names = TRUE)

      all_answered <- !any(is.null(results_vec) | is.na(results_vec))

      correctness <- mapply(
        function(name, value) {
          value %in% dictionary_correct[[name]]
        },
        names(results_vec),
        results_vec
      )

      correct_count <- sum(correctness)
      all_correct <- all_answered && all(correctness)
      some_correct <- correct_count > 0 && !all_correct

      output$flag_results <- renderUI({
        if (length(results_vec) == 0) {
          div(class = "alert alert-warning lecturi-alert", "No flags selected.")
        } else if (!all_answered) {
          div(class = "alert alert-warning lecturi-alert", "Please select a flag for every statement.")
        } else if (all_correct) {
          div(class = "alert alert-success lecturi-alert", "All flags correct!")
        } else if (some_correct) {
          div(class = "alert alert-info lecturi-alert",
              paste0("Some flags are correct (", correct_count, "/", length(results_vec), "), but not all."))
        } else {
          div(class = "alert alert-danger lecturi-alert", "No flags are correct.")
        }
      })
    })

  })
}
