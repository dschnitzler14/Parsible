pause_intro_dictionary <- list(
  list(
    question_no = 1,
    question = "What is the overarching need for this study?",
    answer_1 = "Social isolation causes muscle deterioration",
    answer_2 = "Social isolation has negative repurcussions on health and wellbeing in the elderly",
    answer_3 = "Social isolation is a poorly understood disability",
    correct = "answer_2",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite."
  ),
  list(
    question_no = 2,
    question = "Why is social isolation considered an important health issue?",
    answer_1 = "It only affects mental health, not physical health.",
    answer_2 = "It is associated with physical frailty, reduced activity, and increased disease risk",
    answer_3 = "It improves independence in older adults.",
    correct = "answer_2",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite!"
  ),
  list(
    question_no = 3,
    question = "What gap in the literature are the authors trying to address?",
    answer_1 = "Whether isolation improves muscle growth.",
    answer_2 = "Whether rats prefer living alone.",
    answer_3 = "Whether environmental changes can reduce the physiological effects of isolation.",
    correct = "answer_3",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite!"
  ),
  list(
    question_no = 4,
    question = "What specific intervention are the authors interested in testing?",
    answer_1 = "Intermittently breaking isolation by alternating housing conditions.",
    answer_2 = "Increasing food availability.",
    answer_3 = "Increasing cage size.",
    correct = "answer_1",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite!"
  )
)

pause_results_dictionary <- list(
  list(
    id = "fig1C_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1C.jpg",
    figure_alt = "Figure 1C",
    question = "What do the results for locomotor activity show?",
    answer_a = "During the both the light and dark period, interrupted rats were significantly more active than isolated rats.",
    answer_b = "During the dark period, the isolated rats moved significantly more than the control or interrupted rats.",
    answer_c = "The interrupted rats were significantly more active than the control rats during the dark period.",
    correct = "answer_a",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite."
  ),
  list(
    id = "fig2B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig2B.jpg",
    figure_alt = "Figure 2B",
    question = "What do the results show about the effects of isolation and interrupted isolation on lower limb muscle mass:body weight ratio?",
    answer_a = "There was a significant reduction in lower limb muscle mass:body weight ratio in the isolated group compared with the control group.",
    answer_b = "There was a significant effect of interrupted isolation on lower limb muscle mass:body weight ratio.",
    answer_c = "Interrupted isolation significantly increased lower limb muscle mass:body weight ratio compared with the control group.",
    correct = "answer_a",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3A.jpg",
    figure_alt = "Figure 3A",
    question = "What do the results show about the effects of isolation and interrupted isolation on corticosterone concentrations?",
    answer_a = "Interrupted isolation significantly increased corticosterone concentrations compared with the control group.",
    answer_b = "Isolation significantly increased corticosterone concentrations compared with the control group.",
    answer_c = "Control rats had significantly lower concentrations of corticosterone compared with interrupted isolation rats.",
    correct = "answer_b",
    correct_description = "Well done!",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3B.jpg",
    figure_alt = "Figure 3B",
    question = "What do the results show about ghrelin concentrations?",
    answer_a = "Interrupted isolation significantly increased ghrelin concentrations compared with the control group.",
    answer_b = "Social isolation had no significant effect on ghrelin concentrations",
    answer_c = "Isolated rats had significantly lower concentrations of ghrelin compared to both control and interrupted isolation rats.",
    correct = "answer_c",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3C_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3C.jpg",
    figure_alt = "Figure 3C",
    question = "What do the results show for myostatin concentrations?",
    answer_a = "Interrupted isolation significantly decreased myostatin concentrations compared with the isolation group.",
    answer_b = "Myostatin concentrations were significantly higher in the isolated group compared with the control group.",
    answer_c = "Interrupted isolation significantly increased myostatin concentrations compared with the control group.",
    correct = "answer_a",
    correct_description = "Proceed to the next question.",
    incorrect_helper = "Not quite"
  )
)

understanding_checklist_dictionary <- c(

  "The authors conducted this study because the physiological effects of social isolation and whether they can be reduced by environmental changes were not well understood." =
    "gap_physiological_effects",

  "The study was designed primarily to test whether social isolation improves muscle growth." =
    "incorrect_muscle_growth",

  "Rats were divided into group-housed, isolated, and an intervention group that alternated between the two conditions." =
    "design_three_groups",

  "The researchers measured only behavioural changes and did not assess any biological markers." =
    "incorrect_no_biomarkers",

  "Isolated rats showed increased weight gain, increased food intake, reduced locomotor activity, and reduced muscle-to-body weight ratio." =
    "results_isolation_effects",

  "Isolated rats had higher levels of ghrelin compared to the other groups." =
    "incorrect_ghrelin",

  "Intermittently breaking isolation reduced many of the negative physical effects seen in fully isolated rats." =
    "interpretation_intervention_helped",

  "The findings suggest that reducing isolation time may help mitigate some physical consequences of social isolation." =
    "interpretation_broader_meaning"
)

understanding_checklist_dictionary_correct <- c(
  "gap_physiological_effects",
  "design_three_groups",
  "results_isolation_effects",
  "interpretation_intervention_helped",
  "interpretation_broader_meaning"
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

flag_dictionary_correct <- list(
  flag_1  = "1",
  flag_2  = "1",
  flag_3  = c("2", "3"),
  flag_4  = c("2", "3"),
  flag_5  = c("2", "3"),
  flag_6  = "1",
  flag_7  = c("2", "3"),
  flag_8  = "2",
  flag_9  = c("2", "3"),
  flag_10 = "1"
)

# paperstars rating
title_choices <- list(
  names = list(
    "Appropriate",
    "Slightly Misleading",
    "Exaggerated"
  ),
  values = c("1", "0.5", "0")
)

methods_choices <- list(
  names = list(
    "Sound",
    "Questionable",
    "Inadequate"
  ),
  values = c("1", "0.5", "0")
)

stats_choices <- list(
  names = list(
    "Appropriate",
    "Some Issues",
    "Major concerns"
  ),
  values = c("1", "0.5", "0")
)

data_presentation_choices <- list(
  names = list(
    "Complete and Transparent",
    "Minor Omissions",
    "Misrepresented"
  ),
  values = c("1", "0.5", "0")
)

discussion_choices <- list(
  names = list(
    "Appropriate",
    "Slightly Misleading",
    "Exaggerated"
  ),
  values = c("1", "0.5", "0")
)

limitations_choices <- list(
  names = list(
    "Appropriately acknowledged",
    "Minor Omissions",
    "Inadequate"
  ),
  values = c("1", "0.5", "0")
)

data_available_choices <- list(
  names = list(
    "Completely Available",
    "Partial data available",
    "Not Open Access"
  ),
  values = c("1", "0.5", "0")
)
