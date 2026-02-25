your_turn_paper1_ui <- function(id) {
  ns <- NS(id)
 bslib::page_fluid(
    div(
      class = "ps-guide ps-intro",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Effect of Caffeine on Heart Rate and Blood Pressure"),
            tags$h4("Geethavani, G., Rameswarudu, M., & Reddy, R. R."),
            tags$h4("2018"),
            tags$a(
              href = "https://www.ijsrp.org/research-paper-0214.php?rp=P262278#citation",
              target = "_blank",
              rel = "noopener noreferrer",
              class = "ps-guide-paper-link",
              tagList(
                "Go to paper",
                bs_icon("box-arrow-up-right")
              )
            ),
            uiOutput(ns("strategies_intro"))
          )
        )
      )
    ),

    card(
      card_body(
        tags$div(
          class = "ps-reading-tabs",
          tags$div(id = ns("reading_top")),
        navset_tab(
          id = ns("reading_tabs"),
          
          nav_panel(
            value = "yourturn1_title_abstract_panel",
            title = tagList(
              bs_icon("1-circle-fill"),
              " Title and Abstract"),
            
            card(
                class = "paperstars-instructions-card",
                card_header("Title and Abstract Instructions"),
                card_body(
                    uiOutput(ns("paper1_title_abstract_instructions_text")),
                    uiOutput(ns("paper1_title_abstract_section_goals_text"))
                  )
              ),
              layout_columns(
                col_widths = c(4, 8),

                div(
                  paperstars_rating_ui(
                      id = ns("title_rating_paper1"),
                      label = "What did you think of the title?",
                      title = "Title",
                      choiceNames = title_choices$names,
                      choiceValues = title_choices$values,
                      selected = character(0)
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

                div(
                class = "paper-box paper-box-hl",
                highlighter_toolbar_ui(".prose"),
                uiOutput(ns("paper1_title_abstract"))
              ),
              )
          ),
          nav_panel(
            value = "yourturn1_introduction_panel",
            title = tagList(
              bs_icon("2-circle-fill"),
              " Introduction"),

            card(
                class = "paperstars-instructions-card",
                card_header("Introduction Instructions"),
                card_body(
                  div(
                    uiOutput(ns("paper1_introduction_instructions_text")),
                    uiOutput(ns("paper1_introduction_section_goals_text"))
                  )
                )
              ),
            
            layout_columns(
                col_widths = c(4, 8),

              div(
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

              div(
                class = "paper-box",
                highlighter_toolbar_ui(".prose"),
                uiOutput(ns("paper1_introduction"))
              ),
            )
            
          ),
          
          nav_panel(
            value = "yourturn1_methods_panel",
            title = tagList(
              bs_icon("3-circle-fill"),
              " Methods"
            ),
            
            card(
                class = "paperstars-instructions-card",
                card_header("Methods Instructions"),
                card_body(
                  div(
                    uiOutput(ns("paper1_methods_instructions_text")),
                    uiOutput(ns("paper1_methods_section_goals_text"))
                  )
                )
            ),

            layout_columns(
                col_widths = c(4, 8),
              div(
                paperstars_rating_ui(
                    id = ns("methods_rating_paper1"),
                    label = "What did you think of the methods?",
                    title = "Methods",
                    choiceNames = methods_choices$names,
                    choiceValues = methods_choices$values,
                    selected = character(0)
                  ),
                  
                  paperstars_rating_ui(
                    id = ns("stats_rating_paper1"),
                    label = "What did you think of the statistical analysis?",
                    title = "Statistical Analysis",
                    choiceNames = stats_choices$names,
                    choiceValues = stats_choices$values,
                    selected = character(0)
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

              div(
                  class = "paper-box",
                  highlighter_toolbar_ui(".prose"),
                  uiOutput(ns("paper1_methods"))
                ),

            )
          ),

          nav_panel(
            value = "yourturn1_results_panel",
            title = tagList(
              bs_icon("4-circle-fill"),
              " Results"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Results Instructions"),
              card_body(
                div(
                  uiOutput(ns("paper1_results_instructions_text")),
                  uiOutput(ns("paper1_results_section_goals_text"))
                )
              )
            ),

            layout_columns(
                col_widths = c(4, 8),
              div(
                paperstars_rating_ui(
                  id = ns("data_presentation_rating_paper1"),
                  label = "What did you think of the Data Presentation?",
                  title = "Data Presentation",
                  choiceNames = data_presentation_choices$names,
                  choiceValues = data_presentation_choices$values,
                  selected = character(0)
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
              div(
                class = "paper-box",
                highlighter_toolbar_ui(".prose"),
                uiOutput(ns("paper1_results"))
              ),
            )
          ),
          
          nav_panel(
            value = "yourturn1_pause_panel",
            title = tagList(
              bs_icon("pause-circle"),
              " Pause"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Pause"),
              card_body(
                div(
                  uiOutput(ns("paper1_pause_instructions_text"))
                )
              )
            ),

            div(
              class = "strategies-main",

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "What was the overarching need for this study?"),
                  textAreaInput(
                    ns("your_pause1"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_pause1"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                    class = "sb-answer-body",
                    uiOutput(ns("show_my_pause1_text"))
                  )
                )
              ),

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "What was the experimental design?"),
                  textAreaInput(
                    ns("your_pause2"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_pause2"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                    class = "sb-answer-body",
                    uiOutput(ns("show_my_pause2_text"))
                  )
                )
              ),

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "What do the results show?"),
                  textAreaInput(
                    ns("your_pause3"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_pause3"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                    class = "sb-answer-body",
                    uiOutput(ns("show_my_pause3_text"))
                  )
                )
              ),

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "What are your predictions for the discussion?"),
                  textAreaInput(
                    ns("your_pause4"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_pause4"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                    class = "sb-answer-body",
                    uiOutput(ns("show_my_pause4_text"))
                  )
                )
              )
            )
          ),
          nav_panel(
            value = "yourturn1_discussion_panel",
            title = tagList(
              bs_icon("5-circle-fill"),
              " Discussion"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Discussion Instructions"),
              card_body(
                div(
                  uiOutput(ns("paper1_discussion_instructions_text")),
                  uiOutput(ns("paper1_discussion_section_goals_text"))
                )
              )
            ),

            layout_columns(
                col_widths = c(4, 8),
              div(
                paperstars_rating_ui(
                  id = ns("discussion_rating_paper1"),
                  label = "What did you think of the Discussion?",
                  title = "Discussion",
                  choiceNames = discussion_choices$names,
                  choiceValues = discussion_choices$values,
                  selected = character(0)
                ),
                
              
                paperstars_rating_ui(
                  id = ns("limitations_rating_paper1"),
                  label = "What did you think of the Limitations?",
                  title = "Limitations",
                  choiceNames = limitations_choices$names,
                  choiceValues = limitations_choices$values,
                  selected = character(0)
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
              div(
                class = "paper-box",
                highlighter_toolbar_ui(".prose"),
                uiOutput(ns("paper1_discussion"))
              ),
            )
          ),

          nav_panel(
            value = "yourturn1_understanding_panel",
            title = tagList(
              bs_icon("question-circle"),
              " Understanding"
            ),
            card(
                class = "paperstars-instructions-card",
                card_header("Understanding"),
                card_body(
                div(
                    uiOutput(ns("paper1_understanding_instructions_text"))
                )
                )
            ),

              div(
              class = "strategies-main",
              
              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "How would you summarise the findings?"),
                  textAreaInput(
                    ns("your_understanding1"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_understanding1"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                  class = "sb-answer-body",
                  uiOutput(ns("show_my_understanding1_text"))
                  )
                )
              ),

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "What is the wider impact of these results?"),
                  textAreaInput(
                    ns("your_understanding2"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_understanding2"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                  class = "sb-answer-body",
                  uiOutput(ns("show_my_understanding2_text"))
                  )
                )
              ),

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "What were the limitations of this study?"),

                  textAreaInput(
                    ns("your_understanding3"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_understanding3"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                  class = "sb-answer-body",
                  uiOutput(ns("show_my_understanding3_text"))
                  )
                )
              ),

              bslib::layout_columns(
                col_widths = c(6, 6),
                div(
                  class = "sb-notepad sb-question",
                  tags$h4(class = "sb-q-label", "How do the results support their claims"),
                  textAreaInput(
                    ns("your_understanding4"),
                    label = NULL
                  )
                ),
                div(
                  class = "sb-notepad sb-answer",
                  actionButton(
                    ns("show_my_understanding4"),
                    "Show the answer",
                    class = "sb-reveal-btn"
                  ),
                  div(
                  class = "sb-answer-body",
                  uiOutput(ns("show_my_understanding4_text"))
                  )
                )
              )
              )
            
          ),
        
          nav_panel(
            value = "yourturn1_reflection_panel",
            title = tagList(
              bs_icon("star"),
              " Reflection"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Understanding"),
              card_body(
              div(
                  uiOutput(ns("paper1_reflection_instructions_text"))
              )
              )
            ),

            layout_columns(
                col_widths = c(4, 8),
              div(
                paperstars_rating_ui(
                  id = ns("data_available_rating_paper1"),
                  label = "For this paper, I've alread checked and the data is not openly available.",
                  title = "Data Availability",
                  choiceNames = data_available_choices$names,
                  choiceValues = data_available_choices$values,
                  selected = "0"
                ),
              ),
              div(
                class = "reflection-columns",
                layout_columns(
                  col_widths = c(6, 6),
                  card(
                  fillable = FALSE,
                  card_header("How would you rate this paper?"),
                  card_body(

                  uiOutput(ns("paperstars_parameters_rated")),
                  
                  div(
                      class = "overall-stars-pill",
                      uiOutput(ns("overall_stars")),
                  ),

                  p("If you missed a section, you can go back and rate it now."),
                    
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
                ),
                card(
                  card_header(
                    div(
                      style = "display:flex; align-items:center; justify-content:space-between; gap:12px;",
                      "My Rating & Review",
                      actionButton(
                        ns("reveal_rating_answer"),
                        "Reveal my Rating & Review",
                        class = "sb-reveal-pill"
                      )
                    )
                  ),
                  card_body(
                    uiOutput(ns("my_rating_reveal_ui"))
                  )
                )
                
              )
            )

            )
          ),
          
        )
      ), 
      div(
          class = "ps-tab-nav-wrap",
          div(
            class = "ps-tab-nav",
            actionButton(ns("reading_prev"), "← Previous Section", class = "ps-nav-prev"),
            actionButton(ns("reading_next"), "Next Section →", class = "ps-nav-next")
          )
        )
        )
      ),     
)

}
your_turn_paper1_server <- function(id, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns
     md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }

  output$paper1_title_abstract <- renderUI({
    md_ui("english/your_turn/paper1/paper1_title_abstract.Rmd")
  })

  output$paper1_title_abstract_section_goals_text <- renderUI({
    process_markdown("strategies/title_abstract_section_goals.md")
  })

  output$paper1_title_abstract_instructions_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_title_abstract_instructions.md")
  })

  output$paper1_introduction <- renderUI({
    md_ui("english/your_turn/paper1/paper1_intro.Rmd")
  })

  output$paper1_introduction_instructions_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_intro_instructions.md")
  })

output$paper1_introduction_section_goals_text <- renderUI({
  process_markdown("strategies/introduction_section_goals.md")
  })

  output$paper1_methods <- renderUI({
    md_ui("english/your_turn/paper1/paper1_methods.Rmd")
  })

  output$paper1_methods_instructions_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_methods_instructions.md")
  })

output$paper1_methods_section_goals_text <- renderUI({
  process_markdown("strategies/methods_section_goals.md")
  })

  output$paper1_results <- renderUI({
      md_ui("english/your_turn/paper1/paper1_results.Rmd")
    })
  
  output$paper1_results_instructions_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_results_instructions.md")
  })

  output$paper1_results_section_goals_text <- renderUI({
    process_markdown("strategies/results_section_goals.md")
  })

 output$paper1_pause_instructions_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_pause_instructions.md")
  })

   output$paper1_understanding_instructions_text <- renderUI({
     process_markdown("your_turn/paper1/paper1_understanding_instructions.md")
   })

      output$paper1_reflection_instructions_text <- renderUI({
        process_markdown("your_turn/paper1/paper1_reflection_instructions.md")
      })


  output$paper1_discussion <- renderUI({
    md_ui("english/your_turn/paper1/paper1_discussion.Rmd")
  })

  output$paper1_discussion_instructions_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_discussion_instructions.md")
  })

output$paper1_discussion_section_goals_text <- renderUI({
  process_markdown("strategies/discussion_section_goals.md")
  })

##Pause

observeEvent(input$show_my_pause1, {
  output$show_my_pause1_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_pause1_text.md")

  })
})

observeEvent(input$show_my_pause2, {
  output$show_my_pause2_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_pause2_text.md")

  })
})

observeEvent(input$show_my_pause3, {
  output$show_my_pause3_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_pause3_text.md")

  })
})

observeEvent(input$show_my_pause4, {
  output$show_my_pause4_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_pause4_text.md")

  })
})

## Understanding

observeEvent(input$show_my_understanding1, {
  output$show_my_understanding1_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_understanding1_text.md")

  })
})


observeEvent(input$show_my_understanding2, {
  output$show_my_understanding2_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_understanding2_text.md")

  })
})


observeEvent(input$show_my_understanding3, {
  output$show_my_understanding3_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_understanding3_text.md")

  })
})


observeEvent(input$show_my_understanding4, {
  output$show_my_understanding4_text <- renderUI({
    process_markdown("your_turn/paper1/paper1_show_my_understanding4_text.md")

  })
})


  ## Rating

observeEvent(input$reveal_rating_answer, {

  shinyjs::hide("reveal_rating_answer")

  output$my_rating_reveal_ui <- renderUI({
    tagList(
      uiOutput(ns("paper1_paperstars_parameters_my_rating")),
      div(
        class = "overall-stars-pill",
        uiOutput(ns("paper1_my_overall_stars"))
      ),
      uiOutput(ns("paper1_my_review_text"))
    )
  })

}, once = TRUE)

# my rating and review

output$paper1_paperstars_parameters_my_rating <- renderUI({
  tags$ul(
    class = "paperstars-parameter-list",

    tags$li(
      class = "paperstars-parameter-item rated-good",
      tags$span(class = "paperstars-parameter-label", "Title & Abstract"),
      tags$span(class = "paperstars-parameter-value", "Appropriate")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-okay",
      tags$span(class = "paperstars-parameter-label", "Methods"),
      tags$span(class = "paperstars-parameter-value", "Questionable")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-bad",
      tags$span(class = "paperstars-parameter-label", "Statistical Analysis"),
      tags$span(class = "paperstars-parameter-value", "Major concerns")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-bad",
      tags$span(class = "paperstars-parameter-label", "Data Presentation"),
      tags$span(class = "paperstars-parameter-value", "Misrepresented")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-bad",
      tags$span(class = "paperstars-parameter-label", "Discussion"),
      tags$span(class = "paperstars-parameter-value", "Exaggerated")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-bad",
      tags$span(class = "paperstars-parameter-label", "Limitations"),
      tags$span(class = "paperstars-parameter-value", "Inadequate")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-bad",
      tags$span(class = "paperstars-parameter-label", "Data Availability"),
      tags$span(class = "paperstars-parameter-value", "Not Open Access")
    )
  )
})


output$paper1_my_overall_stars <- renderUI({
  n <- as.integer(1)

  star_svg <- function(filled) {
    col <- if (filled) "#5D8307" else "#D6D7D4"

    tags$svg(
      class = "paperstars-svg-star",
      width = "40", #"86",
      height = "40", #"86",
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


output$paper1_my_review_text <- renderUI({
  tags$div(
    class = "paperstars-textbox",
    process_markdown("your_turn/paper1/paper1_my_review.md")
  )
})

##user paper1 rating and review

`%||%` <- function(x, y) if (is.null(x)) y else x

title_mod <- paperstars_rating_server(
  id = "title_rating_paper1",
  weight = 1,
  choiceNames = title_choices$names,
  choiceValues = title_choices$values
)

methods_mod <- paperstars_rating_server(
  id = "methods_rating_paper1",
  weight = 4,
  choiceNames = methods_choices$names,
  choiceValues = methods_choices$values
)

stats_mod <- paperstars_rating_server(
  id = "stats_rating_paper1",
  weight = 4,
  choiceNames = stats_choices$names,
  choiceValues = stats_choices$values
)

data_presentation_mod <- paperstars_rating_server(
  id = "data_presentation_rating_paper1",
  weight = 3,
  choiceNames = data_presentation_choices$names,
  choiceValues = data_presentation_choices$values
)

discussion_mod <- paperstars_rating_server(
  id = "discussion_rating_paper1",
  weight = 2,
  choiceNames = discussion_choices$names,
  choiceValues = discussion_choices$values
)

limitations_mod <- paperstars_rating_server(
  id = "limitations_rating_paper1",
  weight = 2,
  choiceNames = limitations_choices$names,
  choiceValues = limitations_choices$values
)

data_available_mod <- paperstars_rating_server(
  id = "data_available_rating_paper1",
  weight = 4,
  choiceNames = data_available_choices$names,
  choiceValues = data_available_choices$values
)

rating_mods <- list(
  title_rating_paper1 = title_mod,
  methods_rating_paper1 = methods_mod,
  stats_rating_paper1 = stats_mod,
  data_presentation_rating_paper1 = data_presentation_mod,
  discussion_rating_paper1 = discussion_mod,
  limitations_rating_paper1 = limitations_mod,
  data_available_rating_paper1 = data_available_mod
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
      width = "40", #"86",
      height = "40", #"86",
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
        "Go to Paperstars",
        tags$i(class = "bi bi-box-arrow-up-right")
      )
    )
  })
})

    # nav buttons_strategy----

reading_tab_order <- c(
  "yourturn1_title_abstract_panel",
  "yourturn1_introduction_panel",
  "yourturn1_methods_panel",
  "yourturn1_results_panel",
  "yourturn1_pause_panel",
  "yourturn1_discussion_panel",
  "yourturn1_understanding_panel",
  "yourturn1_reflection_panel"
)

observeEvent(input$reading_next, {
  current <- input$reading_tabs
  i <- match(current, reading_tab_order)

  if (!is.na(i) && i < length(reading_tab_order)) {
    bslib::nav_select("reading_tabs", reading_tab_order[i + 1], session = session)
    session$sendCustomMessage(
      "scrollToAnchor",
      list(id = ns("reading_top"))
    )
  }
})

observeEvent(input$reading_prev, {
  current <- input$reading_tabs
  i <- match(current, reading_tab_order)

  if (!is.na(i) && i > 1) {
    bslib::nav_select("reading_tabs", reading_tab_order[i - 1], session = session)
    session$sendCustomMessage(
      "scrollToAnchor",
      list(id = ns("reading_top"))
    )
  }
})

observe({
  current <- input$reading_tabs
  i <- match(current, reading_tab_order)

  shinyjs::toggle(
    id = "reading_prev",
    condition = !is.na(i) && i > 1
  )

  shinyjs::toggle(
    id = "reading_next",
    condition = !is.na(i) && i < length(reading_tab_order)
  )
})


  })
}