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
      q_weight = "a_weight",
      q_muscle = "a_muscle",
      q_ghrelin = "a_ghrelin",
      q_myostatin = "a_myostatin"
    )

    q_text <- list(
      q_weight = "Does interrupting isolation reduce weight gain versus only isolation?",
      q_nanotag = "Does interrupting isolatation alter locomotor activity of rats?",
      q_elisa_cort = "Does interrupting isolation make the rats less stressed?",
      q_muscle = "Does interrupting isolation attenuate muscle mass loss relative to body weight?",
      q_ghrelin = "Does interrupting isolation alter appetite-related hormone levels?",
      q_myostatin = "Does interrupting isolation alter muscle growth–inhibiting signals?"
    )

    a_text <- list(
      a_elisa_cort = "Measure plasma corticosterone concentrations using ELISA",
      a_nanotag = "Implant a device called nanotag",
      a_weight = "Measure food intake and weight gain",
      a_muscle = "Dissect and weigh masseter and lower limb muscles and calculate muscle-to-body weight ratio",
      a_ghrelin = "Measure plasma ghrelin concentrations using ELISA",
      a_myostatin = "Measure plasma myostatin concentrations using ELISA"
    )

    q_ids <- names(pairs)
    a_ids <- unname(pairs)

    selected_q <- reactiveVal(NULL)
    flash_wrong <- reactiveVal(NULL)

    pair_index <- reactiveVal(0)
    pair_for_id <- reactiveVal(setNames(integer(0), character(0)))

    set_pair <- function(ids, idx) {
      m <- pair_for_id()
      for (id in ids) m[id] <- idx
      pair_for_id(m)
    }

    get_pair <- function(id) {
      m <- pair_for_id()
      if (!is.null(m[id]) && !is.na(m[id])) as.integer(m[id]) else NA_integer_
    }

    safe_label <- function(map, id) {
      if (!is.null(map[[id]])) map[[id]] else id
    }

    class_for <- function(id) {
      idx <- get_pair(id)
      if (!is.na(idx)) return(paste("mg-btn mg-matched", paste0("mg-pair-", idx)))
      if (!is.null(flash_wrong()) && identical(id, flash_wrong())) return("mg-btn btn-danger")
      if (!is.null(selected_q()) && identical(id, selected_q())) return("mg-btn btn-primary")
      if (startsWith(id, "q")) return("mg-btn btn-outline-primary")
      "mg-btn btn-outline-secondary"
    }

    q_order <- reactiveVal(sample(q_ids))
    a_order <- reactiveVal(sample(a_ids))

    output$q_buttons <- renderUI({
      tagList(lapply(q_order(), function(q) {
        actionButton(
          session$ns(q),
          safe_label(q_text, q),
          class = class_for(q)
        )
      }))
    })

    output$a_buttons <- renderUI({
      tagList(lapply(a_order(), function(a) {
        actionButton(
          session$ns(a),
          safe_label(a_text, a),
          class = class_for(a)
        )
      }))
    })

    lapply(q_ids, function(q) {
      observeEvent(input[[q]], {
        if (!is.na(get_pair(q))) return()
        selected_q(q)
      }, ignoreInit = TRUE)
    })

    lapply(a_ids, function(a) {
      observeEvent(input[[a]], {
        if (!is.na(get_pair(a))) return()

        q <- selected_q()
        if (is.null(q)) {
          showNotification("Choose a question first", type = "warning")
          return()
        }

        selected_q(NULL)

        correct_a <- pairs[[q]]
        if (!is.null(correct_a) && identical(correct_a, a)) {
          idx <- pair_index() + 1
          pair_index(idx)
          set_pair(c(q, a), idx)
        } else {
          flash_wrong(a)
          shiny::invalidateLater(700, session)
          flash_wrong(NULL)
        }
      }, ignoreInit = TRUE)
    })
  })
}
