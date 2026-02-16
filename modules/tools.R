tools_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide ps-tools",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("Useful Tools for Reading, Writing, and Managing Papers"),
            uiOutput(ns("tools_intro_text1"))
          )
        )
      ),

      div(
        class = "ps-tools-section",
        tags$div(
          class = "ps-tools-section-head",
          tags$h3("Reference management & citing"),
          tags$p("Save papers, organise PDFs, and generate citations.")
        ),
        bslib::layout_columns(
          col_widths = c(4, 4, 4),
          class = "ps-step-grid ps-tools-grid",

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://www.zotero.org','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Zotero"),
                    tags$p(class = "ps-tool-subtitle", "Bibliography manager")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          )
        )
      ),

      div(
        class = "ps-tools-section",
        tags$div(
          class = "ps-tools-section-head",
          tags$h3("Find papers"),
          tags$p("Search engines, discovery tools, and alerts.")
        ),
        bslib::layout_columns(
          col_widths = c(4, 4, 4),
          class = "ps-step-grid ps-tools-grid",

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://scholar.google.com/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Google Scholar"),
                    tags$p(class = "ps-tool-subtitle", "Search engine for academic literature")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://europepmc.org/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Europe PMC"),
                    tags$p(class = "ps-tool-subtitle", "Academic literature search (Europe PMC)")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://openalex.org/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("OpenAlex"),
                    tags$p(class = "ps-tool-subtitle", "Catalogue of scientific papers")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://pubcrawler.gen.tcd.ie/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("PubCrawler"),
                    tags$p(class = "ps-tool-subtitle", "Automated literature search tool")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          )
        )
      ),

      div(
        class = "ps-tools-section",
        tags$div(
          class = "ps-tools-section-head",
          tags$h3("Writing & publishing"),
          tags$p("Draft manuscripts and share the research process.")
        ),
        bslib::layout_columns(
          col_widths = c(4, 4, 4),
          class = "ps-step-grid ps-tools-grid",

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://www.overleaf.com/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Overleaf"),
                    tags$p(class = "ps-tool-subtitle", "Online LaTeX editor")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://researchequals.com/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Research Equals"),
                    tags$p(class = "ps-tool-subtitle", "Publish your unique research process")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          )
        )
      ),

      div(
        class = "ps-tools-section",
        tags$div(
          class = "ps-tools-section-head",
          tags$h3("Annotation, review & community"),
          tags$p("Annotate papers, review them, and find community resources.")
        ),
        bslib::layout_columns(
          col_widths = c(4, 4, 4),
          class = "ps-step-grid ps-tools-grid",

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://paperstars.org/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Paperstars"),
                    tags$p(class = "ps-tool-subtitle", "Rate and review scientific papers")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://web.hypothes.is/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Hypothes.is"),
                    tags$p(class = "ps-tool-subtitle", "Social annotation for papers")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          # bslib::card(
          #   class = "ps-step ps-tool-card",
          #   bslib::card_body(
          #     class = "ps-tool-click",
          #     onclick = "window.open('https://paperstars.org/','_blank')",
          #     tags$div(
          #       class = "ps-step-inner",
          #       tags$div(
          #         class = "ps-step-title ps-tool-title",
          #         tags$div(class = "ps-linkout", "↗"),
          #         tags$div(
          #           class = "ps-tool-title-text",
          #           tags$h3("Paperstars"),
          #           tags$p(class = "ps-tool-subtitle", "Rate and review scientific papers")
          #         )
          #       ),
          #       tags$div(class = "ps-tool-cta", "Go to site")
          #     )
          #   )
          # ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://www.cos.io/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Center for Open Science"),
                    tags$p(class = "ps-tool-subtitle", "Open science tools and resources")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://openresearchcalendar.org/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("Open Research Calendar"),
                    tags$p(class = "ps-tool-subtitle", "Free events around open science")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          )
        )
      ),

      div(
        class = "ps-tools-section",
        tags$div(
          class = "ps-tools-section-head",
          tags$h3("Stats & analysis"),
          tags$p("Power analysis and statistical computing.")
        ),
        bslib::layout_columns(
          col_widths = c(4, 4, 4),
          class = "ps-step-grid ps-tools-grid",

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("G*Power"),
                    tags$p(class = "ps-tool-subtitle", "Power analysis (free software)")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          ),

          bslib::card(
            class = "ps-step ps-tool-card",
            bslib::card_body(
              class = "ps-tool-click",
              onclick = "window.open('https://www.r-project.org/','_blank')",
              tags$div(
                class = "ps-step-inner",
                tags$div(
                  class = "ps-step-title ps-tool-title",
                  tags$div(class = "ps-linkout", "↗"),
                  tags$div(
                    class = "ps-tool-title-text",
                    tags$h3("R"),
                    tags$p(class = "ps-tool-subtitle", "Statistical computing and graphics")
                  )
                ),
                tags$div(class = "ps-tool-cta", "Go to site")
              )
            )
          )
        )
      ),

      div(
        class = "ps-guide-nav",
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}


tools_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

   nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )

  })
}
