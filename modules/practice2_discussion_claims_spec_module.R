practice_discussion_claims_spec_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h3("Discussion Claims vs Speculation Exercise"),
    p("Adult mice were subjected to a 10-day sleep fragmentation protocol, after which behaviour was assessed using an open field test. Brain tissue from the prefrontal cortex was analysed using quantitative PCR, revealing increased expression of genes associated with synaptic signalling. Sleep-disrupted mice also showed increased locomotor activity during the light phase."),
    sentence_checklist_ui(ns("claims1_checklist")),
    p("Rats were maintained on a high-fat diet for four weeks before undergoing an acute stress task. Circulating hormone levels were measured using ELISA, and stress-related behaviour was assessed using a forced swim test. High-fat diet animals showed elevated corticosterone levels and increased immobility during the task."),
    sentence_checklist_ui(ns("claims2_checklist")),
    p("Juvenile mice were housed in enriched or standard environments for three weeks. Learning was assessed using a novel object recognition task, and brain tissue from the hippocampus was analysed for markers of neuronal growth. Enriched mice showed increased expression of growth-related genes and improved task performance."),
    sentence_checklist_ui(ns("claims3_checklist"))
    
  )
}

practice_discussion_claims_spec_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
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