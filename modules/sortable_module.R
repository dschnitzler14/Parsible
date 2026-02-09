sortable_ui <- function(id, dictionary) {
  ns <- NS(id)
  tagList(
  div(
  class = "ps-sortable-page",
  #div(
    bucket_list(
      header = NULL,
      group_name = "bucket_list_group",
      css_id = ns("bucket_list_source"),
      add_rank_list(
        text = "Drag from here",
        labels = dictionary,
        input_id = ns("rank_source"),
        orientation = "horizontal"
      )
    #)
  )
),

  div(
    class = "bucket-targets-wrap",
    bucket_list(
      header = NULL,
      group_name = "bucket_list_group",
      css_id = ns("bucket_list_targets"),
      add_rank_list(
        text = "Intro",
        labels = NULL,
        input_id = ns("rank_intro"),
        orientation = "vertical"
      ),
      add_rank_list(
        text = "Methods",
        labels = NULL,
        input_id = ns("rank_methods"),
        orientation = "vertical"
      ),
      add_rank_list(
        text = "Results",
        labels = NULL,
        input_id = ns("rank_results"),
        orientation = "vertical"
      ),
      add_rank_list(
        text = "Discussion",
        labels = NULL,
        input_id = ns("rank_discussion"),
        orientation = "vertical"
      )
    )
  ),
  
    actionButton(ns("done_sorting"), 
    "Done Sorting",
    class = "btn btn-primary lecturi-checklist__submit"),
    uiOutput(ns("sorting_feedback"))
  )
}

sortable_server <- function(id, dictionary, dictionary_intro, dictionary_methods, dictionary_results, dictionary_discussion) {
  moduleServer(id, function(input, output, session) {

    `%||%` <- function(x, y) if (is.null(x)) y else x

    output$sorting_feedback <- renderUI(NULL)

    observeEvent(input$done_sorting, {

      intro_correct <- unique(as.character(unname(unlist(dictionary_intro))))
      methods_correct <- unique(as.character(unname(unlist(dictionary_methods))))
      results_correct <- unique(as.character(unname(unlist(dictionary_results))))
      discussion_correct <- unique(as.character(unname(unlist(dictionary_discussion))))

      intro_user <- unique(as.character(input$rank_intro %||% character(0)))
      methods_user <- unique(as.character(input$rank_methods %||% character(0)))
      results_user <- unique(as.character(input$rank_results %||% character(0)))
      discussion_user <- unique(as.character(input$rank_discussion %||% character(0)))

      intro_bucket_correct <- setequal(intro_user, intro_correct)
      methods_bucket_correct <- setequal(methods_user, methods_correct)
      results_bucket_correct <- setequal(results_user, results_correct)
      discussion_bucket_correct <- setequal(discussion_user, discussion_correct)

      all_correct <- intro_bucket_correct && methods_bucket_correct && results_bucket_correct && discussion_bucket_correct

      any_selected <- length(intro_user) + length(methods_user) + length(results_user) + length(discussion_user) > 0

      if (!any_selected) {
        output$sorting_feedback <- renderUI(
          div(class = "alert alert-warning lecturi-alert", "Drag the statements into the correct section boxes.")
        )
      } else if (all_correct) {
        output$sorting_feedback <- renderUI(
          div(class = "alert alert-success lecturi-alert", "Excellent! All statements are in the correct sections.")
        )
      } else {
        output$sorting_feedback <- renderUI(
          div(class = "alert alert-info lecturi-alert", "Nearly there — some statements are in the wrong section.")
        )
      }

      print(list(
        intro = list(user = intro_user, correct = intro_correct, bucket_correct = intro_bucket_correct),
        methods = list(user = methods_user, correct = methods_correct, bucket_correct = methods_bucket_correct),
        results = list(user = results_user, correct = results_correct, bucket_correct = results_bucket_correct),
        discussion = list(user = discussion_user, correct = discussion_correct, bucket_correct = discussion_bucket_correct),
        all_correct = all_correct
      ))
    })
  })
}
