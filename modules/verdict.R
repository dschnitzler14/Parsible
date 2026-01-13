verdict_module_ui <- function(id) {
  ns <- NS(id)

  tagList(
    uiOutput(ns("verdict_text"))
  )
}

verdict_module_server <- function(id, process_markdown = process_markdown) {
  moduleServer(id, function(input, output, session) {


  output$verdict_text <- renderUI({
        process_markdown("chat_device/verdict.md")
      })

  })
}
