strategies_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Reading Strategies"),
            uiOutput(ns("strategies_intro"))
          )
        )
      ),
    

     bslib::layout_columns(
        col_widths = c(3, 3, 3, 3),
        class = "ps-step-grid",

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("📚 Why are we reading this paper?")
              ),
              uiOutput(ns("strategies_intro_why"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("🔬 What if you don’t understand all the technical jargon?")
              ),
              uiOutput(ns("strategies_intro_jargon"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("⏩️ What you can safely ignore (on your first read)")
              ),
              uiOutput(ns("strategies_intro_ignore"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-static-card",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$h3("⚓️ TL;DR - How to read a paper")
              ),
              uiOutput(ns("strategies_intro_tldr"))
            )
          )
        ),

     ),

     bslib::card(
        class = "ps-step ps-static-card",
        bslib::card_body(
          tags$div(
            class = "ps-step-inner",
            tags$div(
              class = "ps-step-title",
              tags$h3("🖊️ Using Highlighters")
            ),
            uiOutput(ns("strategies_intro_highlighter")),

            tags$div(
              class = "ps-split-demo",
              div(
                class = "sb-notepad",
                tags$h4("Notes"),
                uiOutput(ns("strategies_start_demo1_click")),
                uiOutput(ns("strategies_start_demo2_click")),
                uiOutput(ns("strategies_start_demo3_click")),
                uiOutput(ns("strategies_start_demo4_click")),
                uiOutput(ns("strategies_start_demo5_click"))
              ),
              div(
                class = "paper-box",
                uiOutput(ns("start_demo_text"))
              )
            )
          )
        )
      ),

    ),

    card(
      card_header("Strategies for Reading Papers"),
      card_body(
        tags$div(
          class = "ps-reading-tabs",
        navset_tab(
          id = ns("reading_tabs"),
          
          nav_panel(
            value = ns("title_abstract_panel"),
            title = tagList(
              bs_icon("1-circle-fill"),
              " Title and Abstract"),
            
            card(
                class = "paperstars-instructions-card",
                card_header("Title and Abstract Instructions"),
                card_body(
                    uiOutput(ns("title_abstract_instruction_text"))
                  )
              ),
              layout_columns(
                col_widths = c(3, 9),

                div(
                  paperstars_rating_ui(
                      id = ns("title_rating"),
                      label = "What did you think of the title?",
                      title = "Title",
                      choiceNames = title_choices$names,
                      choiceValues = title_choices$values,
                      selected = character(0)
                  ),

                ),

                div(
                  class = "paper-box",
                  uiOutput(ns("strategies_title_abstract"))
                ) 
              )
          ),
          nav_panel(
            title = tagList(
              bs_icon("2-circle-fill"),
              " Introduction"),

            card(
                class = "paperstars-instructions-card",
                card_header("Introduction Instructions"),
                card_body(
                  div(
                    uiOutput(ns("intro_instruction_text"))
                  )
                )
              ),
            
            layout_columns(
                col_widths = c(3, 9),

              div(
                div(
                    class = "sb-notepad",
                    tags$h4("Notes"),
                    uiOutput(ns("strategies_introduction1_click")),
                    uiOutput(ns("strategies_introduction2_click")),
                    uiOutput(ns("strategies_introduction3_click")),
                    uiOutput(ns("strategies_introduction4_click"))
                  ),
                div(
                    class = "sb-notepad",
                    tags$h4("Unknown Concepts and Vocabulary"),
                    uiOutput(ns("strategies_introduction1_vocab_click")),
                )  
              ),

              div(
                  class = "paper-box",
                  uiOutput(ns("strategies_introduction"))
              ),
            )
            
          ),
          
          nav_panel(
            title = tagList(
              bs_icon("3-circle-fill"),
              " Methods"
            ),
            
            card(
                class = "paperstars-instructions-card",
                card_header("Methods Instructions"),
                card_body(
                  div(
                    uiOutput(ns("methods_instruction_text"))
                  )
                )
            ),

            layout_columns(
                col_widths = c(3, 9),
              div(
                paperstars_rating_ui(
                    id = ns("methods_rating"),
                    label = "What did you think of the methods?",
                    title = "Methods",
                    choiceNames = methods_choices$names,
                    choiceValues = methods_choices$values,
                    selected = character(0)
                  ),
                  
                  paperstars_rating_ui(
                    id = ns("stats_rating"),
                    label = "What did you think of the statistical analysis?",
                    title = "Statistical Analysis",
                    choiceNames = stats_choices$names,
                    choiceValues = stats_choices$values,
                    selected = character(0)
                  ),

                  div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  uiOutput(ns("strategies_methods1_click")),
                  uiOutput(ns("strategies_methods2_click")),
                  uiOutput(ns("strategies_methods3_click")),
                  uiOutput(ns("strategies_methods4_click")),
                  uiOutput(ns("strategies_methods6_click")),
                  uiOutput(ns("strategies_methods8_click")),
                  uiOutput(ns("strategies_methods10_click")),
                  uiOutput(ns("strategies_methods12_click")),
                  uiOutput(ns("strategies_methods13_click")),
                  uiOutput(ns("strategies_methods15_click")),
                ),
                  div(
                    class = "sb-notepad",
                    tags$h4("❓ Questions"),
                      uiOutput(ns("strategies_methods5_click")),
                      uiOutput(ns("strategies_methods7_click")),
                      uiOutput(ns("strategies_methods9_click")),
                      uiOutput(ns("strategies_methods10_2_click")),
                      uiOutput(ns("strategies_methods11_click")),
                      uiOutput(ns("strategies_methods14_click")), 
                      uiOutput(ns("strategies_methods17_2_click"))
                  ),
                  div(
                    class = "sb-notepad",
                    tags$h4("🚦 Flags"),
                      uiOutput(ns("strategies_methods16_click")),
                      uiOutput(ns("strategies_methods17_click"))
                  )
              ),

              div(
                class = "paper-box",
                uiOutput(ns("strategies_methods"))
              )

            )
          ),

          nav_panel(
            title = tagList(
              bs_icon("4-circle-fill"),
              " Results"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Results Instructions"),
              card_body(
                div(
                  uiOutput(ns("results_instruction_text"))
                )
              )
            ),

            layout_columns(
              col_widths = c(3, 9),

              div(
                paperstars_rating_ui(
                  id = ns("data_presentation_rating"),
                  label = "What did you think of the Data Presentation?",
                  title = "Data Presentation",
                  choiceNames = data_presentation_choices$names,
                  choiceValues = data_presentation_choices$values,
                  selected = character(0)
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  uiOutput(ns("strategies_results1_click")),
                  uiOutput(ns("strategies_results4_click")),
                  uiOutput(ns("strategies_results6_click")),
                  uiOutput(ns("strategies_results7_click"))
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions")
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  uiOutput(ns("strategies_results2_click")),
                  uiOutput(ns("strategies_results3_click")),
                  uiOutput(ns("strategies_results5_click")),
                  uiOutput(ns("strategies_results8_click"))
                )
              ),

              layout_column_wrap(
                width = 1,
                heights_equal = "row",

                card(
                  class = "paper-box",
                  uiOutput(ns("strategies_results_figs"))
                ),

                card(
                  class = "paper-box",
                  uiOutput(ns("strategies_results"))
                ),

                
              )
            )
          ),

          nav_panel(
            title = tagList(
              bs_icon("pause-circle"),
              " Pause"
            ),
            
            card(
              class = "paperstars-instructions-card",
              card_header("Pause"),
              card_body(
                div(
                  uiOutput(ns("pause_text1"))
                )
              )
            ),

            
            card(
              card_body(
                div(
                  class = "strategies-main",
                  pause_flashcards_ui(ns("pause_intro"), "Background Understanding"),
                )
              )
            ),

            card(
              card_body(
                div(
                class = "strategies-main",
                tags$h3("What questions are they trying to answer?"),
                p("Match the questions to the answers"),
                matching_game_ui(ns("match1"))
                ),
              )
            ),
            
            card(
              card_body(
                div(
                  class = "strategies-main",
                  pause_flashcards_ui(ns("pause_results"), "Examine the Results")
                ),
              )
            ),
              

            card(
              card_header("Summary of Findings"),
              card_body(
                
                div(
                class = "fill-blanks",
                  div(
                    class = "fill-blanks-line",

                    span("This study examined how"),
                    div(
                      class = "blank",
                      selectInput(ns("drop1"), NULL, c("social isolation", "environmental enrichment", "physical exercise"), width = NULL, selectize = FALSE)
                    ),
                    span("influences physical and physiological outcomes using a rat model."),

                    span("The authors were motivated by the idea that social isolation acts as a"),
                    div(
                      class = "blank",
                      selectInput(ns("drop2"), NULL, c("chronic stressor", "nutritional deficit", "genetic mutation"), width = NULL, selectize = FALSE)
                    ),
                    span(", which may disrupt normal regulation of behaviour, metabolism, and muscle maintenance."),

                    span("To test this, they compared animals experiencing continuous isolation with animals in which isolation was"),
                    div(
                      class = "blank",
                      selectInput(ns("drop3"), NULL, c("intermittently interrupted", "pharmacologically blocked", "permanently intensified"), width = NULL, selectize = FALSE)
                    ),
                    span("as a potential intervention."),

                    span("The researchers measured changes in"),
                    div(
                      class = "blank",
                      selectInput(
                        ns("drop4"),
                        NULL,
                        c(
                          "physiological markers related to stress, appetite, and muscle growth",
                          "cognitive performance and learning ability",
                          "immune cell counts and inflammatory markers"
                        ),
                        width = NULL, selectize = FALSE
                      )
                    ),
                    span(", including physical activity, body and muscle weight, and hormones."),

                    span("This approach allowed the authors to evaluate whether interruption of isolation could"),
                    div(
                      class = "blank",
                      selectInput(
                        ns("drop5"),
                        NULL,
                        c(
                          "reduce the negative physical effects",
                          "completely eliminate stress responses",
                          "reverse genetic damage"
                        ),
                        width = NULL,
                        selectize = FALSE
                      )
                    ),
                    span("associated with prolonged social isolation.")
                  ),

              div(
                class = "fill-blanks-output",
                textOutput(ns("sentence_out"))
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
          ),
          
          nav_panel(
            title = tagList(
              bs_icon("5-circle-fill"),
              " Discussion"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Discussion Instructions"),
              card_body(
                div(
                  uiOutput(ns("discussion_instruction_text"))
                )
              )
            ),

            layout_columns(
                col_widths = c(3, 9),
              div(
                paperstars_rating_ui(
                  id = ns("discussion_rating"),
                  label = "What did you think of the Discussion?",
                  title = "Discussion",
                  choiceNames = discussion_choices$names,
                  choiceValues = discussion_choices$values,
                  selected = character(0)
                ),
                
              
                paperstars_rating_ui(
                  id = ns("limitations_rating"),
                  label = "What did you think of the Limitations?",
                  title = "Limitations",
                  choiceNames = limitations_choices$names,
                  choiceValues = limitations_choices$values,
                  selected = character(0)
                ),

                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  uiOutput(ns("strategies_discussion4_click")),
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  uiOutput(ns("strategies_discussion1_click")),
                  uiOutput(ns("strategies_discussion2_click")),
                  uiOutput(ns("strategies_discussion3_click")),
                  uiOutput(ns("strategies_discussion5_click")),
                  uiOutput(ns("strategies_discussion6_click")),
                  uiOutput(ns("strategies_discussion7_click")),
                  uiOutput(ns("strategies_discussion8_click")),
                  uiOutput(ns("strategies_discussion9_click")),
                  uiOutput(ns("strategies_discussion10_click"))
                ),
              ),
              div(
                class = "paper-box",
                uiOutput(ns("strategies_discussion"))
              )
            )
          ),
              
          nav_panel(
            title = tagList(
              bs_icon("question-circle"),
              " Understanding"
            ),

            card(
              class = "paperstars-instructions-card",
              card_header("Understanding Instructions"),
              card_body(
                div(
                  uiOutput(ns("understanding_instruction_text"))
                )
              )
            ),

            card(
              card_header("Understanding"),
              card_body(
              uiOutput(ns("understanding_box1")),
              div(
                class = "strategies-main",
                div(
                  class = "paper-box",
                  sentence_checklist_ui(ns("understanding_checklist"))
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

            card(
              class = "paperstars-instructions-card",
              card_header("Reflection Instructions"),
              card_body(
                div(
                  uiOutput(ns("reflection_instruction_text"))
                )
              )
            ),

            layout_columns(
                col_widths = c(3, 9),
              div(
                paperstars_rating_ui(
                  id = ns("data_available_rating"),
                  label = "For this paper, I've alread checked and the data is not openly available.",
                  title = "Data Availability",
                  choiceNames = data_available_choices$names,
                  choiceValues = data_available_choices$values,
                  selected = "0"
                ),
              
              div(
                  class = "sb-notepad",
                  tags$h4("❓ Open Questions"),
                  
                  tags$h5("Methods"),
                  uiOutput(ns("reflection_methods5_click")),
                  uiOutput(ns("reflection_methods5_answer")),

                  uiOutput(ns("reflection_methods7_click")),
                  uiOutput(ns("reflection_methods7_answer")),

                  uiOutput(ns("reflection_methods9_click")),
                  uiOutput(ns("reflection_methods9_answer")),

                  uiOutput(ns("reflection_methods10_2_click")),
                  uiOutput(ns("reflection_methods10_2_answer")),

                  uiOutput(ns("reflection_methods11_click")),
                  uiOutput(ns("reflection_methods11_answer")),

                  uiOutput(ns("reflection_methods14_click")),
                  uiOutput(ns("reflection_methods14_answer")),

                  uiOutput(ns("reflection_methods17_2_click")),
                  uiOutput(ns("reflection_methods17_2_answer")),
                  
                  tags$h5("Discussion"),
                  uiOutput(ns("reflection_discussion4_click")),
                  uiOutput(ns("reflection_discussion4_answer"))
              )
              ),
              div(
                class = "reflection-columns",
                layout_columns(
                  col_widths = c(6, 6),
                  card(
                    card_header("My Rating and Review"),
                    card_body(
                      uiOutput(ns("paperstars_parameters_my_rating")),
                      div(
                      class = "overall-stars-pill",
                      uiOutput(ns("my_overall_stars")),
                      ),
                      uiOutput(ns("my_review_text"))
                    )
                  ),
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
                )
              )
            )

            )
          ),
          
          nav_panel(
          title = tagList(
            bs_icon("magic"),
            " AI"
          ),

          card(
            class = "paperstars-instructions-card",
            card_header("AI Instructions"),
            card_body(
              div(
                uiOutput(ns("ai_instruction_text"))
              )
            )
          ),

          div(
            class = "ps-guide ps-what-paper",
            bslib::layout_columns(
              col_widths = c(3, 3, 3, 3),
              class = "ps-step-grid ps-what-paper-grid",

              bslib::card(
                class = "ps-step ps-step-1 ps-topic-card",
                `data-card-id` = "what-paper-12",
                bslib::card_body(
                  class = "ps-topic-click",
                  actionButton(ns("open_box_ai_1"), label = NULL, class = "ps-topic-btn"),
                  tags$div(
                    class = "ps-step-inner",
                    tags$div(
                      class = "ps-step-title ps-topic-title",
                      tags$span(class = "ps-step-num", "1"),
                      tags$div(
                        class = "ps-topic-title-text",
                        tags$h3("Let's ask ChatGPT"),
                        tags$p(class = "ps-topic-subtitle", "General LLM")
                      )
                    ),
                    tags$div(
                      class = "ps-tool-cta",
                      bs_icon("chat-dots"),
                      tags$span("Open ChatGPT Response")
                    )
                  )
                )
              ),

            bslib::card(
              class = "ps-step ps-step-2 ps-topic-card",
              `data-card-id` = "what-paper-22",
              bslib::card_body(
                class = "ps-topic-click",
                actionButton(ns("open_box_ai_2"), label = NULL, class = "ps-topic-btn"),
                tags$div(
                  class = "ps-step-inner",
                  tags$div(
                    class = "ps-step-title ps-topic-title",
                    tags$span(class = "ps-step-num", "2"),
                    tags$div(
                      class = "ps-topic-title-text",
                      tags$h3("Let's ask Claude"),
                      tags$p(class = "ps-topic-subtitle", "General LLM")
                    )
                  ),
                  tags$div(
                    class = "ps-tool-cta",
                    bs_icon("chat-dots"),
                    tags$span("Open Claude Response")
                  )
                )
              )
            ),

            bslib::card(
              class = "ps-step ps-step-3 ps-topic-card",
              `data-card-id` = "what-paper-32",
              bslib::card_body(
                class = "ps-topic-click",
                actionButton(ns("open_box_ai_3"), label = NULL, class = "ps-topic-btn"),
                tags$div(
                  class = "ps-step-inner",
                  tags$div(
                    class = "ps-step-title ps-topic-title",
                    tags$span(class = "ps-step-num", "3"),
                    tags$div(
                      class = "ps-topic-title-text",
                      tags$h3("Let's Ask Anara"),
                      tags$p(class = "ps-topic-subtitle", "Science LLM")
                    )
                  ),
                  tags$div(
                    class = "ps-tool-cta",
                    bs_icon("chat-dots"),
                    tags$span("Open Anara Response")
                  )
                )
              )
            ),

            bslib::card(
              class = "ps-step ps-step-4 ps-topic-card",
              `data-card-id` = "what-paper-42",
              bslib::card_body(
                class = "ps-topic-click",
                actionButton(ns("open_box_ai_4"), label = NULL, class = "ps-topic-btn"),
                tags$div(
                  class = "ps-step-inner",
                  tags$div(
                    class = "ps-step-title ps-topic-title",
                    tags$span(class = "ps-step-num", "4"),
                    tags$div(
                      class = "ps-topic-title-text",
                      tags$h3("Consensus"),
                      tags$p(class = "ps-topic-subtitle", "Science LLM")
                    )
                  ),
                  tags$div(
                    class = "ps-tool-cta",
                    bs_icon("chat-dots"),
                    tags$span("Open Consensus Response")
                  )
                )
              )
            )
            ),
        ),

        div(
          class = "ps-guide ps-what-paper",
        bslib::card(
            class = "ps-step ps-step-5 ps-topic-card",
            `data-card-id` = "what-paper-52",
            bslib::card_body(
              class = "ps-topic-click",
              actionButton(ns("open_box_ai_5"), label = NULL, class = "ps-topic-btn"),
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-topic-title",
                  tags$span(class = "ps-step-num", "5"),
                  tags$div(
                    class = "ps-topic-title-text",
                    tags$h3("The Verdict"),
                    tags$p(class = "ps-topic-subtitle", "How did the LLMs do?")
                  )
                ),
                tags$div(
                  class = "ps-tool-cta",
                  bs_icon("trophy"),
                  tags$span("Open the Verdict")
                )
              )
            )
          )
          )


        # div(
        #     class = "ps-guide ps-what-paper",
        #   div(
        #       class = "ps-step ps-step-5 ps-topic-card",
        #       `data-card-id` = "what-paper-52",
        #       bslib::card_body(
        #         class = "ps-topic-click",
        #         actionButton(ns("open_box_ai_5"), label = NULL, class = "ps-topic-btn"),
        #         tags$div(
        #           class = "ps-step-inner",
        #           tags$div(
        #             class = "ps-step-title ps-topic-title",
        #             tags$span(class = "ps-step-num", "5"),
        #             tags$div(
        #               class = "ps-topic-title-text",
        #               tags$h3("The Verdict"),
        #               tags$p(class = "ps-topic-subtitle", "How did the LLMs do?")
        #             )
        #           ),
        #           tags$div(
        #             class = "ps-tool-cta",
        #             bs_icon("trophy"),
        #             tags$span("Open the Verdict")
        #           )
        #         )
        #       )
        #   )
        # #)
        # ),
      )

        )
      )
        )
      ),
    
    
  nav_buttons_ui(ns("nav_controls"))
    
)
}


strategies_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }


output$strategies_intro <- renderUI({
  process_markdown("strategies/strategies_intro_text.md")
})

output$strategies_intro_why <- renderUI({
  process_markdown("strategies/strategies_intro_why_text.md")
})

output$strategies_intro_jargon <- renderUI({
  process_markdown("strategies/strategies_intro_jargon_text.md")
})

output$strategies_intro_ignore <- renderUI({
  process_markdown("strategies/strategies_intro_ignore_text.md")
})

output$strategies_intro_tldr <- renderUI({
  process_markdown("strategies/strategies_intro_tldr_text.md")
})

output$strategies_intro_highlighter <- renderUI({
  process_markdown("strategies/strategies_intro_highlighter_demo_text.md")
})

output$start_demo_text <- renderUI({
  md_ui("english/strategies/strategies_intro_highlighter_demo.Rmd")
})


observeEvent(input$start_demo1, {
  output$strategies_start_demo1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Great job! We've got a general note.")
      )
    )
  })
})

observeEvent(input$start_demo2, {
  output$strategies_start_demo2_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✏️ excitotoxicity = nerve cells suffer damage or death from pathologically high levels of neurotransmitters")
      )
    )
  })
})

observeEvent(input$start_demo3, {
  output$strategies_start_demo3_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("❓ How was neuronal loss quantified? Cell counts? Area loss?")
      )
    )
  })
})

observeEvent(input$start_demo4, {
  output$strategies_start_demo4_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ Green flag! This is what we like to see.")
      )
    )
  })
})


observeEvent(input$start_demo4, {
  output$strategies_start_demo4_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ Amber flag - while small sample sizes like n=6 are quite common, that doesn't make it right! Eyes open for reasons - convenience sampling or difficult population to sample from (e.g. wild animals), or even just an acknowledgement of this in the discussion!")
      )
    )
  })
})

observeEvent(input$start_demo5, {
  output$strategies_start_demo5_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("🚩 Red flag - yikes! Something like this is a red flag!")
      )
    )
  })
})


# Title_and_Abstract_server----

output$title_abstract_instruction_text <- renderUI({
  process_markdown("strategies/title_abstract_instructions.md")
})

  output$strategies_title_abstract <- renderUI({
  md_ui("english/strategies/title_abstract_strategy.Rmd")
})



# Intro_server----

output$intro_instruction_text <- renderUI({
  process_markdown("strategies/intro_instructions.md")
})

output$strategies_introduction <- renderUI({
    md_ui("english/strategies/introduction_strategy.Rmd")
  })


observeEvent(input$intro1, {
  output$strategies_introduction1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ Situating the research in the broader context - why is this research important?")
      )
    )
  })
})

observeEvent(input$intro2, {
  output$strategies_introduction2_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ Identifying gaps in existing knowledge - what is not yet known?")
      )
    )
  })
})

observeEvent(input$intro3, {
  output$strategies_introduction3_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("🚩 This is a strange decision, so keep this in mind when reading the discussion - hopefully they will address this limitation with a rationale.")
      )
    )
  })
})

observeEvent(input$intro4, {
  output$strategies_introduction4_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ They define their aims but not is not an explicit hypothesis-driven study. This is ok, but keep this in mind when reading the methods and results.")
      )
    )
  })
})


observeEvent(input$intro_vocab1, {
  output$strategies_introduction1_vocab_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✏️ Social frailty is a condition characterised by reduced social engagement and support, which can lead to negative health outcomes.")
      )
    )
  })
})


# Methods_server----

output$methods_instruction_text <- renderUI({
  process_markdown("strategies/methods_instructions.md")
})

output$strategies_methods <- renderUI({
    md_ui("english/strategies/methods_strategy.Rmd")
  })

observeEvent(input$methods1, {
  output$strategies_methods1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 24 male rats")
      )
    )
  })
})

observeEvent(input$methods2, {
  output$strategies_methods2_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 animals were acclimatised before experiment")
      )
    )
  })
})

observeEvent(input$methods3, {
  output$strategies_methods3_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 implanted a device called a nanotag")
      )
    )
  })
})

observeEvent(input$methods4, {
  output$strategies_methods4_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 nanotag measures locomotion")
      )
    )
  })
})

methods5_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Did the rats get to recover from the implantation surgery before the experiment started?")
    )
  )
}

methods5_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not specify a recovery period after the implantation surgery. This is an important consideration as surgery can induce stress and affect behaviour. Ideally, there should be a recovery period of at least one week to allow the rats to heal and return to baseline behaviour before starting the experiment."),
      tags$br(),
  )
}

observeEvent(input$methods5, {
  ui <- methods5_question_ui()
  ui_answer <- methods5_answer_ui()

  output$strategies_methods5_click <- renderUI(ui)
  output$reflection_methods5_click <- renderUI(ui)
  output$reflection_methods5_answer <- renderUI(ui_answer)
})

observeEvent(input$methods6, {
  output$strategies_methods6_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Control = housed in pairs")
      )
    )
  })
})

methods7_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Are 2 rats/ cage enough to prevent social isolation stress?")
    )
  )
}

methods7_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "✔️ The authors addressed this is a possible confounding factor."),
      tags$br(),
  )
}

observeEvent(input$methods7, {
  ui <- methods7_question_ui()
  ui_answer <- methods7_answer_ui()

  output$strategies_methods7_click <- renderUI(ui)
  output$reflection_methods7_click <- renderUI(ui)
  output$reflection_methods7_answer <- renderUI(ui_answer)
})

observeEvent(input$methods8, {
  output$strategies_methods8_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Isolated group = Iso"),
        tags$li("📝 Housed alone")
      )
    )
  })
})


methods9_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Is obscuring vision enough to induce social isolation? Rats are social animals and can hear and smell each other.")
    )
  )
}

methods9_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not provide a rationale for why obscuring vision is sufficient to induce social isolation stress. While visual cues are important for social interaction, rats also rely heavily on olfactory and auditory cues. Therefore, it is questionable whether obscuring vision alone is enough to create a socially isolated environment."),
      tags$br(),
  )
}

observeEvent(input$methods9, {
  ui <- methods9_question_ui()
  ui_answer <- methods9_answer_ui()

  output$strategies_methods9_click <- renderUI(ui)
  output$reflection_methods9_click <- renderUI(ui)
  output$reflection_methods9_answer <- renderUI(ui_answer)
})

observeEvent(input$methods10, {
  output$strategies_methods10_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Intervention group = Int"),
        tags$li("📝 Alternated between isolation and pair housing"),
      )
    )
    })
})

methods10_2_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Were they always with the same partner rat when pair-housed?")
    )
  )
}

methods10_2_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not specify whether the rats in the interrupted group were always paired with the same partner rat during the pair-housing periods. This is an important detail as changing cage mates can introduce additional stress and affect social dynamics. "),
      tags$br(),
  )
}

observeEvent(input$methods10_2, {
  ui <- methods10_2_question_ui()
  ui_answer <- methods10_2_answer_ui()

  output$strategies_methods10_2_click <- renderUI(ui)
  output$reflection_methods10_2_click <- renderUI(ui)
  output$reflection_methods10_2_answer <- renderUI(ui_answer)
})

methods11_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ What if one rat eats more than the other?")
    )
  )
}

methods11_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not address how they controlled for potential differences in food intake between cage mates in the pair-housed groups. "),
      tags$br(),
  )
}

observeEvent(input$methods11, {
  ui <- methods11_question_ui()
  ui_answer <- methods11_answer_ui()

  output$strategies_methods11_click <- renderUI(ui)
  output$reflection_methods11_click <- renderUI(ui)
  output$reflection_methods11_answer <- renderUI(ui_answer)
})

observeEvent(input$methods12, {
  output$strategies_methods12_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Locomotor activity measured day and night")
      )
    )
  })
})

observeEvent(input$methods13, {
  output$strategies_methods13_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Muscle weight was normalised against body weight")
      )
    )
  })
})

methods14_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Why were they fasted? For the ghrelin measurements?"),
        tags$li("❓ The restrainining strait jacket is not described very well"),
        tags$li("❓ Corticosterone reaches peak levels 20-30 mins after stress, so the timing makes sense, but could this impact the other measurements? "),
        tags$li("❓ Isn't the point to assess overall elevated corticosterone levels rather than acute stress response?")
    )
  )
}

methods14_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not provide a clear rationale for fasting the rats before blood collection. Additionally, the description of the restraining method is insufficient, making it difficult to assess its potential impact on stress levels. Overall, the timing and procedures for blood collection raise concerns about accurately assessing baseline hormone levels."),
      tags$br(),
  )
}

observeEvent(input$methods14, {
  ui <- methods14_question_ui()
  ui_answer <- methods14_answer_ui()

  output$strategies_methods14_click <- renderUI(ui)
  output$reflection_methods14_click <- renderUI(ui)
  output$reflection_methods14_answer <- renderUI(ui_answer)
})

observeEvent(input$methods15, {
  output$strategies_methods15_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Circulating protein concentrations of corticosterone, ghrelin, and myostatin were measured")
      )
    )
  })
})

observeEvent(input$methods15, {
  output$strategies_methods15_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Circulating protein concentrations of corticosterone, ghrelin, and myostatin were measured by ELISA")
      )
    )
  })
})

observeEvent(input$methods16, {
  output$strategies_methods16_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ Tukey’s test is only appropriate if ANOVA is significant first.")
      )
    )
  })
})

observeEvent(input$methods17, {
  output$strategies_methods17_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ appropriate pre-flight check"),
        tags$li("🚩 no effect size calculation"),
        tags$li("🚩 no power analysis to determine how many rats to use. n=8 is quite arbitrary")
      )
    )
  })
})

methods17_2_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Did they also check for normality?")
    )
  )
}

methods17_2_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not specify whether normality tests were conducted in addition to checking for homogeneity of variance. "),
      tags$br(),
  )
}

observeEvent(input$methods17_2, {
  ui <- methods17_2_question_ui()
  ui_answer <- methods17_2_answer_ui()

  output$strategies_methods17_2_click <- renderUI(ui)
  output$reflection_methods17_2_click <- renderUI(ui)
  output$reflection_methods17_2_answer <- renderUI(ui_answer)
})

# Results_server----

output$results_instruction_text <- renderUI({
  process_markdown("strategies/results_instructions.md")
})

  output$strategies_results <- renderUI({
    md_ui("english/strategies/results_strategy.Rmd")
  })

  ### figs

fig_dir <- "assets/strategies_figures/pause"

fig_files <- list.files(
  file.path("www", fig_dir),
  pattern = "\\.jpg$",
  full.names = FALSE
)

fig_captions <- c(
  strategies_fig1A = "Comparison of weight gain rate, food intake, locomotor activity between the Control, Iso, and Int groups. (a) Weight gain rate (n = 7–8) p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig1B = "Comparison of weight gain rate, food intake, locomotor activity between the Control, Iso, and Int groups. (b) Food intake (n = 7–8) p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig1C = "Comparison of weight gain rate, food intake, locomotor activity between the Control, Iso, and Int groups.(c) Locomotor activity (n = 7–8) p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig2A = "Comparison of muscle weight to body weight ratio between the Control, Iso, and Int groups. (a) Masseter muscle (n = 8). p<0.05(Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig2B = "Comparison of muscle weight to body weight ratio between the Control, Iso, and Int groups. (b) Lower limb muscle (n = 8). p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig3A = "Comparison of plasma corticosterone, ghrelin, and myostatin concentrations between the Control, Iso, and Int groups. (a) corticosterone. p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig3B = "Comparison of plasma corticosterone, ghrelin, and myostatin concentrations between the Control, Iso, and Int groups.(b) ghrelin (n = 4). p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention.",
  strategies_fig3C = "Comparison of plasma corticosterone, ghrelin, and myostatin concentrations between the Control, Iso, and Int groups. (c) myostatin (n = 4). p<0.05 (Tukey’s test). Control group, group-housed; iso group, isolated; Int, intervention."
)

fig_nums <- c(
  strategies_fig1A = "Fig. 1A",
  strategies_fig1B = "Fig. 1B",
  strategies_fig1C = "Fig. 1C",
  strategies_fig2A = "Fig. 2A",
  strategies_fig2B = "Fig. 2B",
  strategies_fig3A = "Fig. 3A",
  strategies_fig3B = "Fig. 3B",
  strategies_fig3C = "Fig. 3C"
)

get_caption <- function(filename) {
  key <- tools::file_path_sans_ext(filename)
  cap <- fig_captions[key]
  if (length(cap) == 0 || is.na(cap) || !nzchar(cap)) "" else as.character(cap)
}

get_num <- function(filename) {
  key <- tools::file_path_sans_ext(filename)
  num <- fig_nums[key]
  if (length(num) == 0 || is.na(num) || !nzchar(num)) "" else as.character(num)
}

current_fig <- reactiveVal(1)

open_fig <- function(i) {
  if (length(fig_files) == 0) return(NULL)
  i <- ((i - 1) %% length(fig_files)) + 1
  current_fig(i)

  f <- fig_files[[i]]
  src <- file.path(fig_dir, f)
  num <- get_num(f)
  cap <- get_caption(f)

  showModal(
    modalDialog(
      size = "l",
      easyClose = TRUE,
      footer = NULL,
      class = "ps-fig-modal",

      div(
        class = "ps-fig-modal-media",
        actionButton(ns("fig_prev"), "\u2039", class = "ps-fig-nav ps-fig-nav-prev"),
        tags$img(src = src, class = "ps-fig-modal-img"),
        actionButton(ns("fig_next"), "\u203A", class = "ps-fig-nav ps-fig-nav-next")
      ),

      div(
        class = "ps-fig-modal-wrap",
        if (nzchar(num)) div(class = "ps-fig-modal-num", num),
        if (nzchar(cap)) div(class = "ps-fig-modal-cap", cap)
      )
    )
  )
}

output$strategies_results_figs <- renderUI({
  if (length(fig_files) == 0) return(NULL)

  thumbs <- lapply(seq_along(fig_files), function(i) {
    f <- fig_files[[i]]
    src <- file.path(fig_dir, f)
    num <- get_num(f)

    div(
      class = "ps-fig-tile",
      actionLink(
        inputId = ns(paste0("fig_thumb_", i)),
        label = tags$img(
          src = src,
          alt = tools::file_path_sans_ext(f),
          class = "ps-fig-thumb-img"
        ),
        class = "ps-fig-thumb"
      ),
      if (nzchar(num)) div(class = "ps-fig-cap", num)
    )
  })

  do.call(
    bslib::layout_column_wrap,
    c(list(width = 1/4, heights_equal = "row"), thumbs)
  )
})

lapply(seq_along(fig_files), function(i) {
  observeEvent(input[[paste0("fig_thumb_", i)]], {
    open_fig(i)
  }, ignoreInit = TRUE)
})

observeEvent(input$fig_prev, {
  open_fig(current_fig() - 1)
}, ignoreInit = TRUE)

observeEvent(input$fig_next, {
  open_fig(current_fig() + 1)
}, ignoreInit = TRUE)


  ###

  observeEvent(input$results1, {
  output$strategies_results1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Isolated group gained significantly more weight in the last three days of the experiment compared to control group"),
        tags$li("📝 There were no differences between the interrupted group and the control groups"),
      )
    )
  })
})

observeEvent(input$results2, {
  output$strategies_results2_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("🚩 Test statistic not reported along with p-value"),
        tags$li("🚩 Effect size not reported")
      )
    )
  })
})

observeEvent(input$results3, {
  output$strategies_results3_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("🚩 No statistic reported for food intake (neither test statistic nor effect size, nor p-value)")
      )
    )
  })
})

observeEvent(input$results4, {
  output$strategies_results4_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 During light period, iso group moved significantly less than int group"),
        tags$li("📝 During dark period, iso group moved significantly less than both control and iso groups")
      )
    )
  })
})

observeEvent(input$results5, {
  output$strategies_results5_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("🚩 Why is the n=7-8? What happened (exlusion criteria not described in the methods)")
      )
    )
  })
})

observeEvent(input$results6, {
  output$strategies_results6_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Both masseter and lower limb muscle-to-body weight was significantly in iso group compared to control"),
        tags$li("📝 Masseter muscle-to-body weight was not different between the interrupted and control groups")
      )
    )
  })
})

observeEvent(input$results7, {
  output$strategies_results7_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("📝 Corticosterone signficantly higher in iso group compared to control"),
        tags$li("📝 Ghrelin significantly lower in iso group compared to both control and int groups"),
        tags$li("📝 Myostatin significantly higher in iso group compared to int group")
      )
    )
  })
})

observeEvent(input$results8, {
  output$strategies_results8_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("🚩 Why is n=4 for the plasma protein concentrations? This is not an adequate sample size.")
      )
    )
  })
})

# Pause_server----
 
output$pause_text1 <- renderUI({
    process_markdown("strategies/pause1.md")
  })

pause_flashcards_server("pause_intro", dictionary = pause_intro_dictionary) # flashcards for understanding introduction
matching_game_server("match1") # matching game for methods
pause_flashcards_server("pause_results", dictionary = pause_results_dictionary) # flashcards for understanding results


output$sentence_out <- renderText({
      paste(
    "This study examined how", input$drop1,
    "influences physical and physiological outcomes using a rat model.",
    "The authors were motivated by the idea that social isolation acts as a", input$drop2, ".",
    "Isolation was", input$drop3, "as a potential intervention.",
    "The researchers measured", input$drop4, ".",
    "This tested whether interruption of isolation could", input$drop5,
    "associated with prolonged social isolation."
  )
    })

# Discussion_server----

output$discussion_instruction_text <- renderUI({
  process_markdown("strategies/discussion_instructions.md")
})

  output$strategies_discussion <- renderUI({
    md_ui("english/strategies/discussion_strategy.Rmd")
  })

observeEvent(input$discussion1, {
  output$strategies_discussion1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ Weight gain and food intake contextualised with previous literature on social isolation stress in rats.")
      )
    )
  })
})

observeEvent(input$discussion2, {
  output$strategies_discussion2_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ The phrasing 'tended' is concerning as this was not statistically significant.")
      )
    )
  })
})

observeEvent(input$discussion3, {
  output$strategies_discussion3_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ The authors report a limitation that the optimal number of rats per group has not yet been established")
      )
    )
  })
})


discussion4_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ What are oxygenated glands?")
    )
  )
}
discussion4_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "✔️ Upon looking up the reference, it seems they meant 'oxyntic glands', glands that secrete hydrochloric acid in the stomach."),
      tags$br(),
  )
}

observeEvent(input$discussion4, {
  ui <- discussion4_question_ui()
  ui_answer <- discussion4_answer_ui()
  
  output$strategies_discussion4_click <- renderUI(ui)
  output$reflection_discussion4_click <- renderUI(ui)
  output$reflection_discussion4_answer <- renderUI(ui_answer)
})

observeEvent(input$discussion5, {
  output$strategies_discussion5_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ While they describe the known effects of ghrelin, the authors don't explicity explain how their results relate to these known effects.")
      )
    )
  })
})

observeEvent(input$discussion6, {
  output$strategies_discussion6_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ Again, the use of 'tended' is concerning as this was not statistically significant."),
        tags$li("They make a broad speculation about the interaction between ghrelin and corticosterone without any evidence from their study to support this."),
        tags$li("The authors do not directly the known effects of corticosterone to the findings of their study.")

      )
    )
  })
})

observeEvent(input$discussion7, {
  output$strategies_discussion7_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ The authors speculate broadly about the effects of myostatin on skeletal muscle proliferation without any evidence from their study to support this."),
      )
    )
  })
})

observeEvent(input$discussion8, {
  output$strategies_discussion8_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ They describe differences in locomotor activity, but do not relate the finding that interrupted group moved more than isolated group to any known effects of social isolation stress."),
      )
    )
  })
})

observeEvent(input$discussion9, {
  output$strategies_discussion9_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ The use of the word 'suppres' indicates an active effect, where here there they are describing an absence")
      )
    )
  })
})

observeEvent(input$discussion10, {
  output$strategies_discussion10_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("⚠️ The broadly speculate that the changes they measured are related to corticosterone, ghrelin, and myostatin changes, but they have no evidence from their study to support this."),
        tags$li("It is concerning that no alternatives are discussed.")
      )
    )
  })
})

# Understanding_server----


output$understanding_instruction_text <- renderUI({
  process_markdown("strategies/understanding_instructions.md")
})

output$understanding_box1 <- renderUI({
        process_markdown("strategies/understanding.md")
      })


sentence_checklist_server(
  "understanding_checklist",
  dictionary = understanding_checklist_dictionary,
  dictionary_correct = understanding_checklist_dictionary_correct,
  label = "Tick the statements you agree with:"
)

# Reflection_server----

output$reflection_instruction_text <- renderUI({
  process_markdown("strategies/reflection_instructions.md")
})

## Rating

`%||%` <- function(x, y) if (is.null(x)) y else x

title_mod <- paperstars_rating_server(
  id = "title_rating",
  weight = 1,
  choiceNames = title_choices$names,
  choiceValues = title_choices$values
)

methods_mod <- paperstars_rating_server(
  id = "methods_rating",
  weight = 4,
  choiceNames = methods_choices$names,
  choiceValues = methods_choices$values
)

stats_mod <- paperstars_rating_server(
  id = "stats_rating",
  weight = 4,
  choiceNames = stats_choices$names,
  choiceValues = stats_choices$values
)

data_presentation_mod <- paperstars_rating_server(
  id = "data_presentation_rating",
  weight = 3,
  choiceNames = data_presentation_choices$names,
  choiceValues = data_presentation_choices$values
)

discussion_mod <- paperstars_rating_server(
  id = "discussion_rating",
  weight = 2,
  choiceNames = discussion_choices$names,
  choiceValues = discussion_choices$values
)

limitations_mod <- paperstars_rating_server(
  id = "limitations_rating",
  weight = 2,
  choiceNames = limitations_choices$names,
  choiceValues = limitations_choices$values
)

data_available_mod <- paperstars_rating_server(
  id = "data_available_rating",
  weight = 4,
  choiceNames = data_available_choices$names,
  choiceValues = data_available_choices$values
)

rating_mods <- list(
  title_rating = title_mod,
  methods_rating = methods_mod,
  stats_rating = stats_mod,
  data_presentation_rating = data_presentation_mod,
  discussion_rating = discussion_mod,
  limitations_rating = limitations_mod,
  data_available_rating = data_available_mod
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


output$my_overall_stars <- renderUI({
  n <- as.integer(2)

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


output$my_review_text <- renderUI({
  tags$div(
    class = "paperstars-textbox",
    process_markdown("strategies/overall_rating_text.md")
  )
})


output$paperstars_parameters_my_rating <- renderUI({
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
      class = "paperstars-parameter-item rated-okay",
      tags$span(class = "paperstars-parameter-label", "Data Presentation"),
      tags$span(class = "paperstars-parameter-value", "Minor Omissions")
    ),

    tags$li(
      class = "paperstars-parameter-item rated-okay",
      tags$span(class = "paperstars-parameter-label", "Discussion"),
      tags$span(class = "paperstars-parameter-value", "Slightly Misleading")
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

# AI_server----


output$ai_instruction_text <- renderUI({
  process_markdown("strategies/ai_instructions.md")
})

open_chat_device_modal <- function(ui_expr, size = "l") {
  showModal(
    modalDialog(
      ui_expr,
      title = NULL,
      footer = NULL,
      easyClose = TRUE,
      size = size,
      class = "ps-chatdevice-modal"
    )
  )
}

observeEvent(input$open_box_ai_1, {
  open_chat_device_modal(
    chat_device_ui(
      ns("gpt_chat"),
      device = "phone",
      height = "650px"
    ),
    size = "l"
  )
}, ignoreInit = TRUE)

observeEvent(input$open_box_ai_2, {
  open_chat_device_modal(
    chat_device_ui(
      ns("claude_chat"),
      device = "phone",
      height = "650px"
    ),
    size = "l"
  )
}, ignoreInit = TRUE)

observeEvent(input$open_box_ai_3, {
  open_chat_device_modal(
    chat_device_ui(
      ns("anara_chat"),
      device = "phone",
      height = "650px"
    ),
    size = "l"
  )
}, ignoreInit = TRUE)

observeEvent(input$open_box_ai_4, {
  open_chat_device_modal(
    chat_device_ui(
      ns("consensus_chat"),
      device = "phone",
      height = "650px"
    ),
    size = "l"
  )
}, ignoreInit = TRUE)

observeEvent(input$open_box_ai_5, {
  showModal(
    modalDialog(
      title = "The Verdict",
      easyClose = TRUE,
      size = "l",
      uiOutput(ns("verdict_text"))
    )
  )
}, ignoreInit = TRUE)

output$verdict_text <- renderUI({
  process_markdown("chat_device/verdict.md")
})



chat_device_server(
  "gpt_chat",
  md_dir = "markdown/english/chat_device/chat_gpt"
)

chat_device_server(
  "claude_chat",
  md_dir = "markdown/english/chat_device/claude"
)

chat_device_server(
  "anara_chat",
  md_dir = "markdown/english/chat_device/anara"
)

chat_device_server(
  "consensus_chat",
  md_dir = "markdown/english/chat_device/consensus"
)

# nav_buttons_server----

   nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

})
  
}
