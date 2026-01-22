practice_green_red_flag_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h1("Select the green, red, amber flags"),

    tags$div(
      class = "flag-row",
      radioButtons(
        ns("flag_choice_1"),
        label = NULL,
        choices = c("✅", "🚩", "⚠️"),
        inline = TRUE
      ),
      p("Male and female Sprague-Dawley rats were used in this study (n=3).")
    ),

    tags$div(
      class = "flag-row",
      radioButtons(
        ns("flag_choice_2"),
        label = NULL,
        choices = c("✅", "🚩", "⚠️"),
        inline = TRUE
      ),
      p("Animals were acclimatised for 10 days prior to testing.")
    ),
    actionButton(
      ns("submit_flags"),
      "Submit"
    ),
    verbatimTextOutput(ns("flag_results"))
  )
}

practice_green_red_flag_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    observeEvent(input$submit_flags, {
      results <- list(
        flag_1 = input$flag_choice_1,
        flag_2 = input$flag_choice_2
      )
      output$flag_results <- renderPrint({
        results
      })
    })
    
  })
}