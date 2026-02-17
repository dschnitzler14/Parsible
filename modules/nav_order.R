nav_buttons_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("nav_buttons"))
}

# nav_buttons_server <- function(id, parent_session, nav_order_list, nav_input_id = "topnav") {
#   moduleServer(id, function(input, output, session) {

#     current_page <- reactive({
#       val <- parent_session$input[[nav_input_id]]
#       if (is.null(val) || identical(val, "")) nav_order_list[[1]] else val
#     })

#     current_index <- reactive({
#       match(current_page(), nav_order_list)
#     })

#     output$nav_buttons <- renderUI({
#       idx <- current_index()
#       if (is.na(idx)) return(NULL)

#       div(
#         class = "card-actions",

#         if (idx > 1) {
#           actionButton(
#             session$ns("go_back"),
#             tagList(icon("arrow-left"), "Previous Section"),
#             class = "fun-btn fun-btn-secondary"
#           )
#         },

#         if (idx < length(nav_order_list)) {
#           actionButton(
#             session$ns("go_next"),
#             tagList("Next Section", icon("arrow-right")),
#             class = "fun-btn fun-btn-primary"
#           )
#         }
#       )
#     })

#     observeEvent(input$go_next, {
#       target <- get_next_nav(current_page(), nav_order_list)
#       bslib::nav_select(nav_input_id, selected = target, session = parent_session)
#     })

#     observeEvent(input$go_back, {
#       target <- get_prev_nav(current_page(), nav_order_list)
#       bslib::nav_select(nav_input_id, selected = target, session = parent_session)
#     })

#   })
# }

nav_buttons_server <- function(id, parent_session, nav_order_list, nav_input_id = "topnav") {
  moduleServer(id, function(input, output, session) {

    nav_ids <- names(nav_order_list)

    current_page <- reactive({
      val <- parent_session$input[[nav_input_id]]
      if (is.null(val) || identical(val, "")) nav_ids[[1]] else val
    })

    current_index <- reactive({
      match(current_page(), nav_ids)
    })

    output$nav_buttons <- renderUI({
      idx <- current_index()
      if (is.na(idx)) return(NULL)

      div(
        class = "card-actions",

        if (idx > 1) {
          prev_id <- nav_ids[[idx - 1]]
          prev_label <- nav_order_list[[prev_id]]

          actionButton(
            session$ns("go_back"),
            tagList(icon("arrow-left"), paste("Back to", prev_label)),
            class = "fun-btn fun-btn-secondary"
          )
        },

        if (idx < length(nav_ids)) {
          next_id <- nav_ids[[idx + 1]]
          next_label <- nav_order_list[[next_id]]

          actionButton(
            session$ns("go_next"),
            tagList(paste("Next to", next_label), icon("arrow-right")),
            class = "fun-btn fun-btn-primary"
          )
        }
      )
    })

    observeEvent(input$go_next, {
      ids <- names(nav_order_list)
      idx <- match(current_page(), ids)
      if (!is.na(idx) && idx < length(ids)) {
        bslib::nav_select(nav_input_id, selected = ids[[idx + 1]], session = parent_session)
      }
    })

    observeEvent(input$go_back, {
      ids <- names(nav_order_list)
      idx <- match(current_page(), ids)
      if (!is.na(idx) && idx > 1) {
        bslib::nav_select(nav_input_id, selected = ids[[idx - 1]], session = parent_session)
      }
    })

  })
}
