strategies_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    layout_column_wrap(
    width = 1,
    card(
      full_screen = TRUE,
      card_header("Reading papers"),
      card_body(
        navset_tab(
          id = "reading_tabs",
          nav_panel(
            title = "How to read advice",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Looking for advice?",
              ),
              card(
                card_header("Advice"),
                card_body(
                  uiOutput(ns("strategies_advice_box1"))
                )
              )
            )
          ),
          nav_panel(
            title = "Title and Abstract",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Title and Abstract",
                
                # div(
                #   class = "sb-notepad",
                #   tags$h4("Checklist"),
                #   checkboxGroupInput( 
                #       "checkbox_group_title_abstract", 
                #       "Checkbox group", 
                #       c( 
                #         "A" = "a", 
                #         "B" = "b", 
                #         "C" = "c" 
                #       ) 
                #     ), 
                # ),
                div(
                  class = "sb-white",
                  tags$h4("Title"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("title_rating"),
                      label = "What did you think of the title?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choiceNames = list(
                        "Appropriate",
                        "Slightly Misleading",
                        "Exaggerated"
                      ),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),
              ),
              card(
                card_header("Title and Abstract"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        uiOutput(ns("strategies_title_abstract"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Introduction",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                class = "sidebar-notes",
                title = "Introduction",
                div(
                  class = "sb-notepad",
                  tags$h4("Notes"),
                  uiOutput(ns("strategies_introduction1_click")),
                  uiOutput(ns("strategies_introduction2_click")),
                  uiOutput(ns("strategies_introduction3_click")),
                  uiOutput(ns("strategies_introduction4_click"))
                ),
                
                # div(
                #   class = "sb-notepad",
                #   tags$h4("Checklist"),
                #   checkboxGroupInput( 
                #       "checkbox_group_introduction", 
                #       "Checkbox group", 
                #       c( 
                #         "A" = "a", 
                #         "B" = "b", 
                #         "C" = "c" 
                #       ) 
                #     ), 
                # ),
                
              ),
              card(
                card_header("Introduction"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        uiOutput(ns("strategies_introduction"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Methods",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Methods",
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
                ),
                div(
                  class = "sb-white",
                  tags$h4("Methods"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("methods_rating"),
                      label = "What did you think of the methods?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      # choices = c(
                      #   "Sound",
                      #   "Questionable",
                      #   "Inadequate"
                      # )
                      choiceNames = list("Sound", "Questionable", "Inadequate"),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),
                div(
                  class = "sb-white",
                  tags$h4("Statistical Analysis"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("stats_rating"),
                      label = "What did you think of the statistical analysis?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choiceNames = list(
                        "Appropriate",
                        "Some Issues",
                        "Major concerns"
                      ),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),
              ),
              card(
                card_header("Methods"),
                card_body(
                    div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        uiOutput(ns("strategies_methods"))
                      )
                    )
                  )
              )
            )
          ),
          nav_panel(
            title = "Results",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Results",
                div(
                  class = "sb-notepad",
                  tags$h4("📝 Notes"),
                  uiOutput(ns("strategies_results1_click")),
                  uiOutput(ns("strategies_results4_click")),
                  uiOutput(ns("strategies_results6_click")),
                  uiOutput(ns("strategies_results7_click")),
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  
                ),
                div(
                  class = "sb-notepad",
                  tags$h4("🚦 Flags"),
                  uiOutput(ns("strategies_results2_click")),
                  uiOutput(ns("strategies_results3_click")),
                  uiOutput(ns("strategies_results5_click")),
                  uiOutput(ns("strategies_results8_click")),
                ),
                div(
                  class = "sb-white",
                  tags$h4("Data Presentation"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("data_presentation_rating"),
                      label = "What did you think of the Data Presentation?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choiceNames = list(
                        "Complete and Transparent",
                        "Minor Omissions",
                        "Misrepresented"
                      ),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),
              ),
              card(
                card_header("Results"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        uiOutput(ns("strategies_results"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Pause",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Pause",
                
              ),
              card(
                card_header("Pause"),
                card_body(
                  
                )
              )
            )
          ),
          nav_panel(
            title = "Discussion",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Discussion",
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
                div(
                  class = "sb-white",
                  tags$h4("Discussion"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("discussion_rating"),
                      label = "What did you think of the Discussion?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choiceNames = list(
                        "Appropriate",
                        "Slightly Misleading",
                        "Exaggerated"
                      ),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),
                div(
                  class = "sb-white",
                  tags$h4("Limitations"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("limitations_rating"),
                      label = "What did you think of the Limitations?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choiceNames = list(
                        "Appropriately acknowledged",
                        "Minor Omissions",
                        "Inadequate"
                      ),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),

              ),
              card(
                card_header("Discussion"),
                card_body(
                  div(
                      class = "strategies-main",
                      div(
                        class = "paper-box",
                        uiOutput(ns("strategies_discussion"))
                      )
                    )
                )
              )
            )
          ),
          nav_panel(
            title = "Understanding",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Understanding",
                
              ),
              card(
                card_header("Understanding"),
                card_body(
                  
                )
              )
            )
          ),
          nav_panel(
            title = "Reflection",
            layout_sidebar(
              sidebar = sidebar(
                width = "40%",
                title = "Reflection",
                div(
                  class = "sb-white",
                  tags$h4("Data Availability"),
                  div(
                    class = "paperstars-rating",
                    radioGroupButtons(
                      inputId = ns("data_available_rating"),
                      label = "Is the Data Available?",
                      direction = "vertical",
                      justified = TRUE,
                      size = "sm",
                      individual = TRUE,
                      selected = character(0),
                      choiceNames = list(
                        "Completely Available",
                        "Partial data available",
                        "Not Open Access"
                      ),
                      choiceValues = list("1", "0.5", "0")
                    )
                  )
                ),
              ),
              card(
                card_header("Reflection"),
                card_body(
                  div(
                  class = "sb-notepad",
                  tags$h4("❓ Questions"),
                  tags$h3("Introduction"),
                  tags$hr(),
                  tags$h3("Methods"),
                  uiOutput(ns("reflection_methods5_click")),
                  uiOutput(ns("reflection_methods7_click")),
                  uiOutput(ns("reflection_methods9_click")),
                  uiOutput(ns("reflection_methods10_2_click")),
                  uiOutput(ns("reflection_methods11_click")),
                  uiOutput(ns("reflection_methods14_click")),
                  uiOutput(ns("reflection_methods17_2_click")),
                  tags$hr(),
                  tags$h3("Results"),
                  tags$hr(),
                  tags$h3("Discussion"),
                  uiOutput(ns("reflection_discussion4_click"))

                ),
                  uiOutput(ns("overall_stars"))
                )
              )
            )
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


  output$strategies_advice_box1 <- renderUI({
        process_markdown("strategies/now_what_start.md")
      })


# Title and Abstract
  
  output$strategies_title_abstract <- renderUI({
  md_ui("english/strategies/title_abstract_strategy.Rmd")
})


# Intro

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

# Methods
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

# observeEvent(input$methods5, {
#   output$strategies_methods5_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ Did the rats get to recover from the implantation surgery before the experiment started?")
#       )
#     )
#   })
# })

methods5_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Did the rats get to recover from the implantation surgery before the experiment started?")
    )
  )
}

observeEvent(input$methods5, {
  ui <- methods5_question_ui()

  output$strategies_methods5_click <- renderUI(ui)
  output$reflection_methods5_click <- renderUI(ui)
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

# observeEvent(input$methods7, {
#   output$strategies_methods7_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ Are 2 rats/ cage enough to prevent social isolation stress?")
#       )
#     )
#   })
# })

methods7_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Are 2 rats/ cage enough to prevent social isolation stress?")
    )
  )
}

observeEvent(input$methods7, {
  ui <- methods7_question_ui()

  output$strategies_methods7_click <- renderUI(ui)
  output$reflection_methods7_click <- renderUI(ui)
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

# observeEvent(input$methods9, {
#   output$strategies_methods9_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ Is obscuring vision enough to induce social isolation? Rats are social animals and can hear and smell each other.")
#       )
#     )
#   })
# })

###
methods9_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Is obscuring vision enough to induce social isolation? Rats are social animals and can hear and smell each other.")
    )
  )
}

observeEvent(input$methods9, {
  ui <- methods9_question_ui()

  output$strategies_methods9_click <- renderUI(ui)
  output$reflection_methods9_click <- renderUI(ui)
})
###

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

#   output$strategies_methods10_2_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ Were they always with the same partner rat when pair-housed?"),
#       )
#     )
#   })
# })
###
methods10_2_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ Were they always with the same partner rat when pair-housed?")
    )
  )
}

observeEvent(input$methods10_2, {
  ui <- methods10_2_question_ui()

  output$strategies_methods10_2_click <- renderUI(ui)
  output$reflection_methods10_2_click <- renderUI(ui)
})
###

# observeEvent(input$methods11, {
#   output$strategies_methods11_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ What is one rat eats more than the other?")
#       )
#     )
#   })
# })

###
methods11_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ What is one rat eats more than the other?")
    )
  )
}

observeEvent(input$methods11, {
  ui <- methods11_question_ui()

  output$strategies_methods11_click <- renderUI(ui)
  output$reflection_methods11_click <- renderUI(ui)
})
###

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

# observeEvent(input$methods14, {
#   output$strategies_methods14_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ Why were they fasted? For the ghrelin measurements?"),
#         tags$li("❓ The restrainining strait jacket is not described very well"),
#         tags$li("❓ Corticosterone reaches peak levels 20-30 mins after stress, so the timing makes sense, but could this impact the other measurements? "),
#         tags$li("❓ Isn't the point to assess overall elevated corticosterone levels rather than acute stress response?"),
#       )
#     )
#   })
# })

###
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

observeEvent(input$methods14, {
  ui <- methods14_question_ui()

  output$strategies_methods14_click <- renderUI(ui)
  output$reflection_methods14_click <- renderUI(ui)
})
###

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

#   output$strategies_methods17_2_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ did they also check for normality?")
#       )
#     )
#   })
# })

###
methods17_2_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ did they also check for normality?")
    )
  )
}

observeEvent(input$methods17_2, {
  ui <- methods17_2_question_ui()

  output$strategies_methods17_2_click <- renderUI(ui)
  output$reflection_methods17_2_click <- renderUI(ui)
})
###

  # Results

  output$strategies_results <- renderUI({
    md_ui("english/strategies/results_strategy.Rmd")
  })

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


  # Discussion

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

# observeEvent(input$discussion4, {
#   output$strategies_discussion4_click <- renderUI({
#     tagList(
#       tags$ul(
#         tags$li("❓ What are oxygenated glands"),
#         tags$li("Upon looking up the reference, it seems they meant 'oxyntic glands', glands that secrete hydrochloric acid in the stomach.")
#       )
#     )
#   })
# })

###
discussion4_question_ui <- function() {
  tagList(
    tags$ul(
      tags$li("❓ What are oxygenated glands?")
    )
  )
}

observeEvent(input$discussion4, {
  ui <- discussion4_question_ui()

  output$strategies_discussion4_click <- renderUI(ui)
  output$reflection_discussion4_click <- renderUI(ui)
})
###

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

## Rating

rating_ids <- c(
  "title_rating",
  "methods_rating",
  "stats_rating",
  "data_presentation_rating",
  "discussion_rating",
  "limitations_rating",
  "data_available_rating"
)

weighting_scores <- c(
  1,
  4,
  4,
  3,
  2,
  2,
  4
)

`%||%` <- function(x, y) if (is.null(x)) y else x

ratings_numeric <- reactive({
  vals <- lapply(rating_ids, function(id) {
    as.numeric(input[[id]] %||% "0")
  })
  unlist(vals, use.names = FALSE)
})

weighted_scores <- reactive({
  ratings_numeric() * weighting_scores
})

weighted_total <- reactive({
  sum(weighted_scores())
})

weighted_percent <- reactive({
  (weighted_total() / sum(weighting_scores)) * 100
})

output$ratings_debug <- renderPrint({
  ratings_numeric()
})

output$weighted_debug <- renderPrint({
  list(
    weights = weighting_scores,
    weighted_scores = weighted_scores(),
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
      width = "86",
      height = "86",
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


  # nav buttons

   nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

  })
}
