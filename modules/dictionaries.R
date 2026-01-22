pause_intro_dictionary <- list(
  list(
    question_no = 1,
    question = "What is the overarching need for this study?",
    answer_1 = "Social isolation causes muscle deterioration",
    answer_2 = "Social isolation has negative repurcussions on health and wellbeing in the elderly",
    answer_3 = "Social isolation is a poorly understood disability",
    correct = "answer_2",
    correct_description = "Social isolation affects many elderly and can have negative effects such as depression, increased mortality, and,
especially in the elderly, cardiovascular disease, cerebrovascular disease, and cognitive decline",
    incorrect_helper = "This is usually described in the opening statement of the introduction."
  ),
  list(
    question_no = 2,
    question = "ABCD",
    answer_1 = "1",
    answer_2 = "2",
    answer_3 = "3",
    correct = "answer_2",
    correct_description = "Exactly! ABCD",
    incorrect_helper = "Not quite! ABCD"
  )
)

pause_results_dictionary <- list(
  list(
    id = "fig1A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1A.jpg",
    figure_alt = "Figure 1A",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig1B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1B.jpg",
    figure_alt = "Figure 1B",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig1C_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1C.jpg",
    figure_alt = "Figure 1C",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig2A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig2A.jpg",
    figure_alt = "Figure 2A",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig2B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig2B.jpg",
    figure_alt = "Figure 2B",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3A.jpg",
    figure_alt = "Figure 3A",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3B.jpg",
    figure_alt = "Figure 3B",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3C_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3C.jpg",
    figure_alt = "Figure 3C",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  )
)

# sentence_checklist_dictionary_names <-list(
#     "Social isolation has significant negative effects on health and wellbeing in the elderly.",
#     "Muscle deterioration is a key concern for socially isolated elderly individuals.",
#     "The study aims to investigate the impact of social isolation by studying its effects on mental health."
#   )

# sentence_checklist_dictionary_values <-list(
#     "social_isolation_health" ,
#     "muscle_deterioration" ,
#     "study_aims"
#   )

# sentence_checklist_dictionary_correct <- list(
#     "social_isolation_health",
#     "muscle_deterioration"
# )

understanding_checklist_dictionary <- c(
  "Social isolation has significant negative effects on health and wellbeing in the elderly." =
    "social_isolation_health",

  "Muscle deterioration is a key concern for socially isolated elderly individuals." =
    "muscle_deterioration",

  "The study aims to investigate the impact of social isolation by studying its effects on mental health." =
    "study_aims"
)

understanding_checklist_dictionary_correct <- c(
  "social_isolation_health",
  "muscle_deterioration"
)


build_a_paper_dictionary <- list(
  "Describe the overarching need for this study.",
  "Give an overview of relevant literature to provide context.",
  "Describe the gap in knowledge that this study aims to fill.",
  "Describe the specific research question or hypothesis.",
  "Describe the study design and procedures.",
  "Explain the data collection methods used.",
  "Describe the participants or subjects involved in the study.",
  "Present the results obtained from the research.",
  "Contextualise the findings and with existing literature.",
  "Describe the limitations of the study and how they were addressed.",
  "Suggest the next steps for future research."
)

randomised_build_a_paper_dictionary <- sample(build_a_paper_dictionary)

build_a_paper_intro_dictionary <- list(
  "Describe the overarching need for this study.",
  "Give an overview of relevant literature to provide context.",
  "Describe the gap in knowledge that this study aims to fill.",
  "Describe the specific research question or hypothesis."
)

build_a_paper_methods_dictionary <- list(
  "Describe the study design and procedures.",
  "Explain the data collection methods used.",
  "Describe the participants or subjects involved in the study."
)

build_a_paper_results_dictionary <- list(
  "Present the results obtained from the research."
)

build_a_paper_discussion_dictionary <- list(
  "Contextualise the findings and with existing literature.",
  "Describe the limitations of the study and how they were addressed.",
  "Suggest the next steps for future research."
)


claims1_checklist_dictionary <- c(
  "Sleep fragmentation led to increased expression of synaptic signalling–related genes in the prefrontal cortex." =
    "sleep_fragmentation_synaptic_signalling",
  "Sleep-disrupted mice displayed elevated locomotor activity during behavioural testing." =
    "sleep_disrupted_mice_locomotor_activity",
  "Therefore, altered synaptic signalling in the prefrontal cortex likely mediates the behavioural changes observed following sleep disruption." =
    "altered_synaptic_signalling",
  "These results suggest that restoring normal synaptic gene expression would be sufficient to normalise behaviour in sleep-disrupted animals." =
    "restoring_synaptic_gene_expression"
)

claims1_checklist_dictionary_correct <- c(
  "sleep_fragmentation_synaptic_signalling",
  "sleep_disrupted_mice_locomotor_activity"
)

claims2_checklist_dictionary <- c(
  "A high-fat diet was associated with elevated corticosterone levels following acute stress." =
    "high_fat_diet_corticosterone_levels",

  "Rats fed a high-fat diet exhibited increased immobility during the forced swim test." =
    "high_fat_diet_immobility",

  "Thus, diet-induced hormonal changes are likely responsible for the altered stress-related behaviour observed in this study." =
    "diet_induced_hormonal_changes",

  "These findings imply that modifying dietary composition alone could prevent maladaptive stress responses." =
    "modifying_dietary_composition"
)

claims2_checklist_dictionary_correct <- c(
  "high_fat_diet_corticosterone_levels",
  "high_fat_diet_immobility"
)

claims3_checklist_dictionary <- c(
  "Environmental enrichment increased the expression of neuronal growth markers in the hippocampus." =
    "environmental_enrichment_neuronal_growth",

  "Enriched mice performed better on the novel object recognition task compared with controls." =
    "enriched_mice_learning_improvements",

  "Accordingly, enhanced neuronal growth in the hippocampus likely drives the learning improvements observed following environmental enrichment." =
    "enhanced_neuronal_growth_hippocampus",

  "These results suggest that increasing hippocampal growth is sufficient to enhance learning outcomes." =
    "increasing_hippocampal_growth"
)

claims3_checklist_dictionary_correct <- c(
  "environmental_enrichment_neuronal_growth",
  "enriched_mice_learning_improvements"
)
