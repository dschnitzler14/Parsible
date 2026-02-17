practice_discussion_claims_spec_module_ui <- function(id) {
  ns <- NS(id)
 
  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("discussion_claims_spec_intro_text"))
        )
      )
    ),

    card(
      card_header("Discussion 1"),
      card_body(
        div(
          class = "strategies-main",
          div(
            class = "paper-box",
            uiOutput(ns("discussion1_spec_ev"))
          ),
          sentence_checklist_ui(ns("claims1_checklist"))
        )
      )
    ),

    card(
      card_header("Discussion 2"),
      card_body(
        div(
          class = "strategies-main",
          div(
            class = "paper-box",
            uiOutput(ns("discussion2_spec_ev"))

          ),
          sentence_checklist_ui(ns("claims2_checklist"))
        )
      )
    ),

    card(
      card_header("Discussion 3"),
      card_body(
        div(
          class = "strategies-main",
          div(
            class = "paper-box",
            uiOutput(ns("discussion3_spec_ev"))
          ),
          sentence_checklist_ui(ns("claims3_checklist"))
        )
      )
    )
  )
}

practice_discussion_claims_spec_module_server <- function(id, process_markdown ) {
  moduleServer(id, function(input, output, session) {


output$discussion_claims_spec_intro_text <- renderUI({
   process_markdown("practice/practice3_speculation_evidence/pratice3_speculation_evidence_instructions_text.md")
})

output$discussion1_spec_ev <- renderUI({
   process_markdown("practice/practice3_speculation_evidence/discussion1_spec_ev_text.md")
})

output$discussion2_spec_ev <- renderUI({
   process_markdown("practice/practice3_speculation_evidence/discussion2_spec_ev_text.md")
})

output$discussion3_spec_ev <- renderUI({
   process_markdown("practice/practice3_speculation_evidence/discussion3_spec_ev_text.md")
})
    
sentence_checklist_server(
  "claims1_checklist",
  dictionary = claims1_checklist_dictionary,
  dictionary_correct = claims1_checklist_dictionary_correct,
  label = "Tick the statements that are evidence-based claims:"
)

sentence_checklist_server(
  "claims2_checklist",
  dictionary = claims2_checklist_dictionary,
  dictionary_correct = claims2_checklist_dictionary_correct,
  label = "Tick the statements that are evidence-based claims:"
)

sentence_checklist_server(
  "claims3_checklist",
  dictionary = claims3_checklist_dictionary,
  dictionary_correct = claims3_checklist_dictionary_correct,
  label = "Tick the statements that are evidence-based claims:"
)

  })
}