searching_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
  div(
    class = "ps-guide",

    bslib::card(
      class = "ps-guide-hero",
      bslib::card_body(
        tags$div(
          class = "ps-guide-hero-inner",
          tags$h3("How to Start Searching for Scientific Papers"),
          uiOutput(ns("searching_intro_text1"))
        )
      )
    ),

    bslib::layout_columns(
      col_widths = c(4, 4, 4),
      class = "ps-step-grid",

      bslib::card(
        class = "ps-step ps-step-1 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "1"),
              tags$h3("Start with a clear question")
            ),
            uiOutput(ns("searching_step1_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-2 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "2"),
              tags$h3("Turn your question into key terms")
            ),
            uiOutput(ns("searching_step2_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-3 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "3"),
              tags$h3("Use Boolean operators (AND, OR, NOT)")
            ),
            uiOutput(ns("searching_step3_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-4 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "4"),
              tags$h3("Use quotation marks for exact phrases")
            ),
            uiOutput(ns("searching_step4_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-5 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "5"),
              tags$h3("Use parentheses to control meaning")
            ),
            uiOutput(ns("searching_step5_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-6 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "6"),
              tags$h3("Expect to refine your search (this is normal)")
            ),
            uiOutput(ns("searching_step6_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-7 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "7"),
              tags$h3("Common beginner mistakes to avoid")
            ),
            uiOutput(ns("searching_step7_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-8 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "8"),
              tags$h3("Example search")
            ),
            uiOutput(ns("searching_step8_text"))
          )
        )
      ),

      bslib::card(
        class = "ps-step ps-step-9 ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$span(class = "ps-step-num", "9"),
              tags$h3("Read titles first, abstracts second")
            ),
            uiOutput(ns("searching_step9_text"))
          )
        )
      )
    )
  ),


    ####
    # bslib::card(
    #   class = "ps-searching-card",
    #   bslib::card_body(
    #     div(
    #       class = "ps-searching",
    #       tags$h3(class = "ps-search-title", "Try Boolean searching (OpenAlex)"),
    #       tags$p(
    #         class = "ps-search-help",
    #         "Type a query using UPPERCASE boolean operators: AND, OR, NOT. Parentheses work too."
    #       ),

    #       div(
    #         class = "ps-search-topwrap",
    #         div(
    #           class = "ps-search-row",
    #           div(
    #             class = "ps-searchbar ps-searchbar-wide",
    #             textInput(
    #               ns("oa_query"),
    #               label = NULL,
    #               value = "(climate OR weather) AND adaptation NOT politics",
    #               placeholder = "Search by title, author, DOI, keyword…"
    #             ),
    #             actionButton(ns("run_search"), HTML("&rarr;"), class = "ps-search-go")
    #           )
    #         ),
    #         div(
    #           class = "ps-sort-row",
    #           div(
    #             class = "ps-sort",
    #             tags$div(class = "ps-sort-label", "Sort"),
    #             selectInput(
    #               ns("sort_mode"),
    #               label = NULL,
    #               choices = c(
    #                 "Relevance" = "relevance_score:desc",
    #                 "Citations" = "cited_by_count:desc"
    #               ),
    #               selected = "relevance_score:desc"
    #             )
    #           )
    #         )
    #       ),

    #       div(
    #         class = "ps-example-row",
    #         actionButton(ns("ex_and"), "Example: AND", class = "ps-pill"),
    #         actionButton(ns("ex_or"), "Example: OR", class = "ps-pill"),
    #         actionButton(ns("ex_not"), "Example: NOT", class = "ps-pill")
    #       ),

    #       div(
    #         class = "ps-meta-row",
    #         div(
    #           class = "ps-control ps-control-n",
    #           tags$span(class = "ps-control-label", "Results to show"),
    #           numericInput(ns("n_results"), label = NULL, value = 10, min = 5, max = 50, step = 5)
    #         ),
    #         div(
    #           class = "ps-control ps-control-url",
    #           checkboxInput(ns("show_url"), "Show OpenAlex request URL", value = FALSE)
    #         )
    #       ),

    #       conditionalPanel(
    #         condition = sprintf("input['%s'] == true", ns("show_url")),
    #         tags$pre(class = "ps-requrl", textOutput(ns("req_url")))
    #       ),

    #       tags$div(class = "ps-status", textOutput(ns("status"))),
    #       div(class = "ps-results", DT::DTOutput(ns("results_tbl")))
    #     )
    #   )
    # ),
    nav_buttons_ui(ns("nav_controls"))
  )
  
}


searching_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns


      output$searching_intro_text1 <- renderUI({
        process_markdown("searching_papers/searching_intro.md")
      })

      output$searching_step1_text <- renderUI({
        process_markdown("searching_papers/searching_step1.md")
      })

      output$searching_step2_text <- renderUI({
        process_markdown("searching_papers/searching_step2.md")
      })

      output$searching_step3_text <- renderUI({
        process_markdown("searching_papers/searching_step3.md")
      })

      output$searching_step4_text <- renderUI({
        process_markdown("searching_papers/searching_step4.md")
      })

      output$searching_step5_text <- renderUI({
        process_markdown("searching_papers/searching_step5.md")
      })

      output$searching_step6_text <- renderUI({
        process_markdown("searching_papers/searching_step6.md")
      })

      output$searching_step7_text <- renderUI({
        process_markdown("searching_papers/searching_step7.md")
      })

      output$searching_step8_text <- renderUI({
        process_markdown("searching_papers/searching_step8.md")
      })

      output$searching_step9_text <- renderUI({
        process_markdown("searching_papers/searching_step9.md")
      })

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

    results_rv <- reactiveVal(NULL)
    req_url_rv <- reactiveVal("")

    observeEvent(input$ex_and, {
      updateTextInput(session, "oa_query", value = "\"sleep\" AND adolescents")
    })

    observeEvent(input$ex_or, {
      updateTextInput(session, "oa_query", value = "(\"machine learning\" OR \"deep learning\") AND healthcare")
    })

    observeEvent(input$ex_not, {
      updateTextInput(session, "oa_query", value = "climate AND change NOT politics")
    })

    ###
    observeEvent(input$run_search, {
  q <- trimws(input$oa_query)
  n <- as.integer(input$n_results %||% 10)
  n <- max(5L, min(50L, n))

  if (q == "") {
    output$status <- renderText("Type a query first.")
    results_rv(NULL)
    return()
  }

  output$status <- renderText("Searching OpenAlex…")

  mailto <- Sys.getenv("OPENALEX_MAILTO", unset = "")
  if (mailto == "") mailto <- NULL

  res <- tryCatch(
    {
      openalexR::oa_fetch(
        entity = "works",
        search = q,
        pages = 1,
        per_page = n,
        options = list(sort = input$sort_mode),
        output = "list",
        verbose = FALSE,
        mailto = mailto
      )
    },
    error = function(e) e
  )

  if (inherits(res, "error") || is.null(res)) {
    output$status <- renderText(paste("Search failed:", conditionMessage(res)))
    results_rv(NULL)
    return()
  }

  `%||%` <- function(x, y) if (is.null(x) || length(x) == 0) y else x

  extract_one <- function(w) {
  `%||%` <- function(x, y) if (is.null(x) || length(x) == 0) y else x

  title <- w$display_name %||% NA_character_
  year <- w$publication_year %||% NA_integer_
  cites <- w$cited_by_count %||% NA_integer_
  doi <- w$doi %||% NA_character_
  venue <- w$primary_location$source$display_name %||% NA_character_

  authors <- NA_character_
  if (!is.null(w$authorships) && length(w$authorships) > 0) {
    author_names <- vapply(
      w$authorships,
      function(a) a$author$display_name %||% NA_character_,
      character(1)
    )
    author_names <- author_names[!is.na(author_names)]
    if (length(author_names) > 0) {
      authors <- paste(author_names, collapse = "; ")
    }
  }

  data.frame(
    title = title,
    authors = authors,
    year = year,
    citations = cites,
    venue = venue,
    doi = doi,
    stringsAsFactors = FALSE
  )
}


  out <- dplyr::bind_rows(lapply(res, extract_one))

  make_url <- function(query, sort) {
    paste0(
      "https://api.openalex.org/works?search=",
      utils::URLencode(query, reserved = TRUE),
      "&sort=",
      utils::URLencode(sort, reserved = TRUE),
      "&per-page=",
      n,
      "&page=1"
    )
  }

  req_url_rv(make_url(q, input$sort_mode))
  output$req_url <- renderText(req_url_rv())

  results_rv(out)
  output$status <- renderText(paste0("Showing top ", n, " results for: ", q))
})


    output$results_tbl <- DT::renderDT({
      x <- results_rv()
      req(x)

      if ("doi" %in% names(x)) {
        x$doi <- ifelse(
          is.na(x$doi) | x$doi == "",
          "",
          paste0("<a target='_blank' rel='noopener noreferrer' href='https://doi.org/", x$doi, "'>", x$doi, "</a>")
        )
      }

      DT::datatable(
        x,
        escape = FALSE,
        rownames = FALSE,
        options = list(pageLength = 10, autoWidth = TRUE)
      )
    })
  })
}
