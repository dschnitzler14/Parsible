# chat_device_ui <- function(id,
#                            title = "Chat",
#                            subtitle = NULL,
#                            device = c("phone", "tablet"),
#                            height = NULL) {
#   ns <- NS(id)
#   device <- match.arg(device)

#   bslib::card(
#     class = paste("cd-card", paste0("cd-", device)),
#     bslib::card_header(
#       div(
#         class = "cd-topbar",
#         div(
#           class = "cd-topbar-left",
#           div(class = "cd-avatar"),
#           div(
#             class = "cd-titlewrap",
#             div(class = "cd-title", title),
#             if (!is.null(subtitle)) div(class = "cd-subtitle", subtitle)
#           )
#         ),
#         div(class = "cd-topbar-right", bsicons::bs_icon("three-dots-vertical"))
#       )
#     ),
#     bslib::card_body(
#       style = if (!is.null(height)) paste0("height:", height, ";") else NULL,
#       div(
#         class = "cd-device",
#         div(
#           class = "cd-screen",
#           div(
#             class = "cd-chat",
#             uiOutput(ns("chat"))
#           )
#         )
#       )
#     )
#   )
# }
chat_device_ui <- function(id,
                           title = "Chat",
                           subtitle = NULL,
                           device = c("phone", "tablet"),
                           height = NULL) {
  ns <- NS(id)
  device <- match.arg(device)

  div(
    class = paste("cd-wrap", paste0("cd-", device)),
    div(
      class = "cd-topbar",
      div(
        class = "cd-topbar-left",
        div(class = "cd-avatar"),
        div(
          class = "cd-titlewrap",
          div(class = "cd-title", title),
          if (!is.null(subtitle)) div(class = "cd-subtitle", subtitle)
        )
      ),
      div(class = "cd-topbar-right", bsicons::bs_icon("three-dots-vertical"))
    ),
    div(
      class = "cd-body",
      style = if (!is.null(height)) paste0("height:", height, ";") else NULL,
      div(
        class = "cd-device",
        div(
          class = "cd-screen",
          div(
            class = "cd-chat",
            uiOutput(ns("chat"))
          )
        )
      )
    )
  )
}


chat_device_server <- function(id,
                               md_dir,
                               avatar_me = NULL,
                               avatar_them = NULL) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    parse_side <- function(filename) {
      nm <- basename(filename)
      if (grepl("_me", nm, fixed = TRUE)) return("you")
      if (grepl("_them", nm, fixed = TRUE)) return("them")
      "them"
    }

    parse_order <- function(filename) {
      nm <- basename(filename)
      m <- regmatches(nm, regexpr("\\d+", nm))
      if (length(m) == 0 || is.na(m) || m == "") return(Inf)
      as.integer(m)
    }

    md_to_ui <- function(path) {
      html <- markdown::markdownToHTML(file = path, fragment.only = TRUE)
      HTML(html)
    }

    render_bubble <- function(side, path) {
      avatar <- NULL
      if (side == "you" && !is.null(avatar_me)) avatar <- avatar_me
      if (side == "them" && !is.null(avatar_them)) avatar <- avatar_them

      bubble_class <- paste("cd-bubble", if (side == "you") "cd-bubble-you" else "cd-bubble-them")
      row_class <- paste("cd-row", if (side == "you") "cd-row-you" else "cd-row-them")

      tagList(
        div(
          class = row_class,
          if (!is.null(avatar)) div(class = "cd-bubble-avatar", tags$img(src = avatar, alt = "")) else NULL,
          div(
            class = "cd-bubble-wrap",
            div(class = bubble_class, md_to_ui(path))
          )
        )
      )
    }

    output$chat <- renderUI({
      files <- list.files(md_dir, pattern = "\\.md$", full.names = TRUE)

      if (length(files) == 0) {
        return(div(class = "cd-empty", "No markdown files found in: ", md_dir))
      }

      sides <- vapply(files, parse_side, character(1))
      orders <- vapply(files, parse_order, integer(1))

      o <- order(orders, files)
      files <- files[o]
      sides <- sides[o]

      tagList(Map(render_bubble, sides, files))
    })
  })
}
