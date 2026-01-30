your_turn_paper4_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    layout_column_wrap(
    width = 1,
    card(
      full_screen = TRUE,
      card_header("Authors et al."),
      card_body(
        navset_tab(
          id = ns("reading_tabs"),
          nav_panel(
            value = ns("title_abstract_panel"),
            title = tagList(
              bs_icon("1-circle-fill"),
              " Title and Abstract"
            ),

            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Title and Abstract", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",
                div(
                  class = "sb-white",
                  tags$h4("Title"),
                  paperstars_rating_ui(
                      id = ns("title_rating_paper4"),
                      label = "What did you think of the title?",
                      choiceNames = title_choices$names,
                      choiceValues = title_choices$values,
                      selected = character(0)
                    )
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  sb_notepad_emoji_picker_ui(c("📝")),
                  textAreaInput(ns("title_abstract_notes"), label = NULL)
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  sb_notepad_emoji_picker_ui(c("❓")),
                  textAreaInput(ns("title_abstract_questions"), label = NULL)
                    
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  sb_notepad_emoji_picker_ui(c("✅", "⚠️", "🚩")),
                  textAreaInput(ns("title_abstract_flags"), label = NULL)
                    
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("✏️ Unknown Concepts and Vocabulary"),
                  sb_notepad_emoji_picker_ui(c("✏️")),
                  textAreaInput(ns("title_abstract_vocab"), label = NULL)
                  
                ),
              ),
              card(
                class = "paperstars-instructions-card",
                card_header("Title and Abstract Instructions"),
                card_body(
                  div(
                    
                  )
                )
              ),
              card(
                card_header("Title and Abstract"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        highlighter_toolbar_ui(".prose"),
                        uiOutput(ns("paper4_title_abstract"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("2-circle-fill"),
              " Introduction"
            ),
            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Introduction", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",
              
                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  sb_notepad_emoji_picker_ui(c("📝")),
                  textAreaInput(ns("intro_notes"), label = NULL)
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  sb_notepad_emoji_picker_ui(c("❓")),
                  textAreaInput(ns("intro_questions"), label = NULL)
                    
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  sb_notepad_emoji_picker_ui(c("✅", "⚠️", "🚩")),
                  textAreaInput(ns("intro_flags"), label = NULL)
                    
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("✏️ Unknown Concepts and Vocabulary"),
                  sb_notepad_emoji_picker_ui(c("✏️")),
                  textAreaInput(ns("intro_vocab"), label = NULL)
                  
                ),
                
              ),
              card(
                class = "paperstars-instructions-card",
                card_header("Introduction Instructions"),
                card_body(
                  div(
                    
                  )
                )
              ),
              card(
                card_header("Introduction"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        highlighter_toolbar_ui(".prose"),
                        uiOutput(ns("paper4_introduction"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("3-circle-fill"),
              " Methods"
            ),
            
            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Methods", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",

                
                div(
                  class = "sb-white",
                  tags$h4("Methods"),
                  paperstars_rating_ui(
                    id = ns("methods_rating_paper4"),
                    label = "What did you think of the methods?",
                    choiceNames = methods_choices$names,
                    choiceValues = methods_choices$values,
                    selected = character(0)
                  ),
                  
                ),
                div(
                  class = "sb-white",
                  tags$h4("Statistical Analysis"),
                  paperstars_rating_ui(
                    id = ns("stats_rating_paper4"),
                    label = "What did you think of the statistical analysis?",
                    choiceNames = stats_choices$names,
                    choiceValues = stats_choices$values,
                    selected = character(0)
                  ),
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  sb_notepad_emoji_picker_ui(c("📝")),
                  textAreaInput(ns("methods_notes"), label = NULL)
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  sb_notepad_emoji_picker_ui(c("❓")),
                  textAreaInput(ns("methods_questions"), label = NULL)
                    
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  sb_notepad_emoji_picker_ui(c("✅", "⚠️", "🚩")),
                  textAreaInput(ns("methods_flags"), label = NULL)
                    
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("✏️ Unknown Concepts and Vocabulary"),
                  sb_notepad_emoji_picker_ui(c("✏️")),
                  textAreaInput(ns("methods_vocab"), label = NULL)
                  
                ),
                
              ),
              card(
                class = "paperstars-instructions-card",
                card_header("Methods Instructions"),
                card_body(
                )
              ),
              card(
                card_header("Methods"),
                card_body(
                    div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        highlighter_toolbar_ui(".prose"),
                        uiOutput(ns("paper4_methods"))
                      )
                    )
                  )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("4-circle-fill"),
              " Results"
            ),
            
            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Results", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",

                
                div(
                  class = "sb-white",
                  tags$h4("Data Presentation"),
                  paperstars_rating_ui(
                    id = ns("data_presentation_rating_paper4"),
                    label = "What did you think of the Data Presentation?",
                    choiceNames = data_presentation_choices$names,
                    choiceValues = data_presentation_choices$values,
                    selected = character(0)
                  ),
                  
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  sb_notepad_emoji_picker_ui(c("📝")),
                  textAreaInput(ns("results_notes"), label = NULL)
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  sb_notepad_emoji_picker_ui(c("❓")),
                  textAreaInput(ns("results_questions"), label = NULL)
                    
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  sb_notepad_emoji_picker_ui(c("✅", "⚠️", "🚩")),
                  textAreaInput(ns("results_flags"), label = NULL)
                    
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("✏️ Unknown Concepts and Vocabulary"),
                  sb_notepad_emoji_picker_ui(c("✏️")),
                  textAreaInput(ns("results_vocab"), label = NULL)
                  
                ),

              
              ),
              card(
                class = "paperstars-instructions-card",
                card_header("Results Instructions"),
                card_body(
                  div(
                    
                  )
                )
              ),
              card(
                card_header("Results"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        highlighter_toolbar_ui(".prose"),
                        uiOutput(ns("paper4_results"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("pause-circle"),
              " Pause"
            ),
            
            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Pause", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",
                
              ),
              card(
                class = "paperstars-instructions-card",
                card_header("Pause"),
                card_body(
                  div(
                  )
                )
              ),
              
              card(
                card_header("Summary of Findings"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        p("Why did they do this study?"),
                        p("How did they do the study?"),
                        p("What did they find?"),
                        p("What do the results mean?")
                      )
                    )
                )
              ),
              card(
                card_header("Discussion Predictions"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        p("Before we move on, let's also think about the Discussion."),
                        tags$ul(
                          tags$li("What do you expect the authors to say in the Discussion?"),
                          tags$li("How will they interpret the results?"),
                          tags$li("What limitations might they mention?"),
                          tags$li("Based on the evidence, what claims would be reasonable?")
                        )
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("5-circle-fill"),
              " Discussion"
            ),
            
            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Discussion", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",

                div(
                  class = "sb-white",
                  tags$h4("Discussion"),
                  paperstars_rating_ui(
                    id = ns("discussion_rating_paper4"),
                    label = "What did you think of the Discussion?",
                    choiceNames = discussion_choices$names,
                    choiceValues = discussion_choices$values,
                    selected = character(0)
                  ),
                  
                ),
                div(
                  class = "sb-white",
                  tags$h4("Limitations"),
                  paperstars_rating_ui(
                    id = ns("limitations_rating_paper4"),
                    label = "What did you think of the Limitations?",
                    choiceNames = limitations_choices$names,
                    choiceValues = limitations_choices$values,
                    selected = character(0)
                  ),

                ),
                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  sb_notepad_emoji_picker_ui(c("📝")),
                  textAreaInput(ns("discussion_notes"), label = NULL)
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  sb_notepad_emoji_picker_ui(c("❓")),
                  textAreaInput(ns("discussion_questions"), label = NULL)
                    
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  sb_notepad_emoji_picker_ui(c("✅", "⚠️", "🚩")),
                  textAreaInput(ns("discussion_flags"), label = NULL)
                    
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("✏️ Unknown Concepts and Vocabulary"),
                  sb_notepad_emoji_picker_ui(c("✏️")),
                  textAreaInput(ns("discussion_vocab"), label = NULL)
                  
                ),


              ),
              card(
                class = "paperstars-instructions-card",
                card_header("Discussion Instructions"),
                card_body(
                  div(
                    
                  )
                )
              ),
              card(
                card_header("Discussion"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        highlighter_toolbar_ui(".prose"),
                        uiOutput(ns("paper4_discussion"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("question-circle"),
              " Understanding"
            ),
            
            layout_sidebar(
              fillable = TRUE,
              fill = TRUE,
            sidebar = sidebar(
              title = tags$span("Understanding", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "40%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",
                
                
              ),
              card(
                card_header("Understanding"),
                card_body(
                div(
                  class = "strategies-main",
                  div(
                    class = "sb-notepad",
                    textAreaInput(ns("Your_Summary"), label = "Your Summary")
                  )
                )
                
                )
              )
            )
          ),
          nav_panel(
            title = tagList(
              bs_icon("star"),
              " Reflection"
            ),
            layout_sidebar(
          
              fillable = FALSE,
              fill = FALSE,
            sidebar = sidebar(
              title = tags$span("Reflection", class = "toc-title"),
              open = list(desktop = "always", mobile = "closed"),
              width = "20%",
              bg = "inherit",
              fg = "inherit",
              padding = "0px",
              gap = "1px",
              div(
                  class = "sb-notepad",
                  tags$h4("❓ Open Questions"),
                  
                ),
                div(
                  class = "sb-white",
                  tags$h4("Data Availability"),
                  tags$p("This information is often not included in the main text of a paper, so you may need to check the supplementary materials or the journal's website."),
                  paperstars_rating_ui(
                    id = ns("data_available_rating_paper4"),
                    label = "For this paper, I've alread checked and the data is not openly available.",
                    choiceNames = data_available_choices$names,
                    choiceValues = data_available_choices$values,
                    selected = "0"
                  )
                  
                ),
              ),
              card(
                card_header("Reflection"),
                card_body(
                  
                card(
                  card_header("How would you rate this paper?"),
                  card_body(
                  uiOutput(ns("paperstars_parameters_rated")),
                  p("If you missed a section, you can go back and rate it now."),
                  tags$hr(),
                  uiOutput(ns("overall_stars")),
                  
                    div(
                      class = "paperstars-text-input",
                      textAreaInput(
                        ns("your_review_input"),
                        label = "Your Review",
                        value = "",
                        placeholder = "Write your review here...",
                        width = "100%"
                      ),
                      actionButton(
                        ns("submit_review"),
                        "Submit Review",
                        class = "paperstars-button"
                      ),
                      uiOutput(ns("review_submitted"))
                    )
                  )

                )
              
            )
            )
            )
          ),
          
        )
      )
    )
  ),
    
  nav_buttons_ui(ns("nav_controls"))
    
)

}
your_turn_paper4_server <- function(id, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns
     md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }

  output$paper4_title_abstract <- renderUI({
    md_ui("english/your_turn/paper4/paper4_title_abstract.Rmd")
  })

  output$paper4_introduction <- renderUI({
    md_ui("english/your_turn/paper4/paper4_intro.Rmd")
  })

  output$paper4_methods <- renderUI({
    md_ui("english/your_turn/paper4/paper4_methods.Rmd")
  })

  output$paper4_results <- renderUI({
      md_ui("english/your_turn/paper4/paper4_results.Rmd")
    })
  
  output$paper4_discussion <- renderUI({
    md_ui("english/your_turn/paper4/paper4_discussion.Rmd")
  })


  ## Rating

`%||%` <- function(x, y) if (is.null(x)) y else x

title_mod <- paperstars_rating_server(
  id = "title_rating_paper4",
  weight = 1,
  choiceNames = title_choices$names,
  choiceValues = title_choices$values
)

methods_mod <- paperstars_rating_server(
  id = "methods_rating_paper4",
  weight = 4,
  choiceNames = methods_choices$names,
  choiceValues = methods_choices$values
)

stats_mod <- paperstars_rating_server(
  id = "stats_rating_paper4",
  weight = 4,
  choiceNames = stats_choices$names,
  choiceValues = stats_choices$values
)

data_presentation_mod <- paperstars_rating_server(
  id = "data_presentation_rating_paper4",
  weight = 3,
  choiceNames = data_presentation_choices$names,
  choiceValues = data_presentation_choices$values
)

discussion_mod <- paperstars_rating_server(
  id = "discussion_rating_paper4",
  weight = 2,
  choiceNames = discussion_choices$names,
  choiceValues = discussion_choices$values
)

limitations_mod <- paperstars_rating_server(
  id = "limitations_rating_paper4",
  weight = 2,
  choiceNames = limitations_choices$names,
  choiceValues = limitations_choices$values
)

data_available_mod <- paperstars_rating_server(
  id = "data_available_rating_paper4",
  weight = 4,
  choiceNames = data_available_choices$names,
  choiceValues = data_available_choices$values
)

rating_mods <- list(
  title_rating_paper4 = title_mod,
  methods_rating_paper4 = methods_mod,
  stats_rating_paper4 = stats_mod,
  data_presentation_rating_paper4 = data_presentation_mod,
  discussion_rating_paper4 = discussion_mod,
  limitations_rating_paper4 = limitations_mod,
  data_available_rating_paper4 = data_available_mod
)

weighted_total <- reactive({
  sum(vapply(rating_mods, function(m) m$score(), numeric(1)))
})

weights_total <- reactive({
  sum(vapply(rating_mods, function(m) m$weight(), numeric(1)))
})

weighted_percent <- reactive({
  denom <- weights_total()
  if (is.na(denom) || denom == 0) return(0)
  (weighted_total() / denom) * 100
})

output$weighted_debug <- renderPrint({
  list(
    weights = vapply(rating_mods, function(m) m$weight(), numeric(1)),
    weighted_scores = vapply(rating_mods, function(m) m$score(), numeric(1)),
    total = weighted_total(),
    percent = weighted_percent()
  )
})

star_rating <- reactive({
  pct <- weighted_percent()

  if (is.na(pct) || pct <= 0) {
    0
  } else if (pct <= 20) {
    1
  } else if (pct <= 40) {
    2
  } else if (pct <= 50) {
    3
  } else if (pct <= 80) {
    4
  } else {
    5
  }
})

output$star_debug <- renderPrint({
  paste("Star Rating:", star_rating())
})


output$overall_stars <- renderUI({
  n <- as.integer(star_rating())

  star_svg <- function(filled) {
    col <- if (filled) "#5D8307" else "#D6D7D4"

    tags$svg(
      class = "paperstars-svg-star",
      width = "60", #"86",
      height = "60", #"86",
      viewBox = "0 0 24 24",
      xmlns = "http://www.w3.org/2000/svg",
      tags$path(
        d = "M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z",
        fill = col,
        stroke = col,
        `stroke-width` = "1.4",
        `stroke-linejoin` = "round",
        `stroke-linecap` = "round"
      )
    )
  }

  tags$div(
    class = "paperstars-stars",
    lapply(1:5, function(i) star_svg(i <= n))
  )
})


output$paperstars_parameters_rated <- renderUI({

  items <- list(
    "Title & Abstract" = title_mod,
    "Methods" = methods_mod,
    "Statistical Analysis" = stats_mod,
    "Data Presentation" = data_presentation_mod,
    "Discussion" = discussion_mod,
    "Limitations" = limitations_mod,
    "Data Availability" = data_available_mod
  )

  tags$ul(
    class = "paperstars-parameter-list",
    lapply(names(items), function(label) {

      mod <- items[[label]]

      chosen_value <- tryCatch(mod$choice_value(), error = function(e) NULL)
      chosen_name <- tryCatch(mod$choice_name(), error = function(e) NULL)

      status_class <- if (is.null(chosen_value)) {
        "not-rated"
      } else if (as.numeric(chosen_value) == 1) {
        "rated-good"
      } else if (as.numeric(chosen_value) == 0.5) {
        "rated-okay"
      } else {
        "rated-bad"
      }

      tags$li(
        class = paste("paperstars-parameter-item", status_class),
        tags$span(class = "paperstars-parameter-label", label),
        tags$span(
          class = "paperstars-parameter-value",
          chosen_name %||% "Not yet rated"
        )
      )
    })
  )
})

observeEvent(input$submit_review, {
  output$review_submitted <- renderUI({
    tags$div(
      class = "paperstars-review-success",
      tags$p(
        class = "paperstars-review-success-text",
        "Good job! This is just a demo, but you could hop over to the real Paperstars and submit your review there."
      ),
      tags$a(
        href = "https://paperstars.org",
        target = "_blank",
        class = "paperstars-review-success-link",
        "Go to Paperstars"
      )
    )
  })
})
    
  })
}