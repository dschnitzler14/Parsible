source("global.R")

library(shiny)
library(bslib)
library(bsicons)


# load all modules in modules/ directory ----
module_files <- list.files(path = "modules", pattern = "\\.R$", full.names = TRUE)
invisible(lapply(module_files, source))

theme <- bslib::bs_theme(
  bg = "#EEDDC1",
  fg = "#2f3b00",

  primary = "#4C6B00",
  secondary = "#CBD5AE",

  base_font = bslib::font_google("Inter"),
  heading_font = bslib::font_google("Libre Baskerville")
)

ui <- bslib::page_navbar(
  
  title = tagList(
  fontawesome::fa("readme"),
  " Parsible"
),
  id = "topnav",
  theme = theme,


tags$head(
  tags$title("Parsible - Learn to Read a Paper"),
  shinyjs::useShinyjs(),
  tags$link(rel = "icon", type = "image/x-icon", href = "favicon.png"),
  tags$link(rel="stylesheet", href="css/00_tokens.css"),
  tags$link(rel="stylesheet", href="css/01_background.css"),
  tags$link(rel="stylesheet", href="css/02_layout.css"),
  tags$link(rel="stylesheet", href="css/20_typography.css"),
  tags$link(rel="stylesheet", href="css/10_cards.css"),
  tags$link(rel="stylesheet", href="css/11_buttons.css"),
  tags$link(rel="stylesheet", href="css/12_sidebar.css"),
  tags$link(rel="stylesheet", href="css/30_paperbox.css"),
  tags$link(rel="stylesheet", href="css/40_paperstars.css"),
  tags$link(rel="stylesheet", href="css/50_tools.css"),
  tags$link(rel="stylesheet", href="css/60_searching.css"),
  tags$link(rel="stylesheet", href="css/61_ps_guide.css"),
  tags$link(rel="stylesheet", href="css/90_nav_verdict.css"),
  tags$link(rel="stylesheet", href="css/99_footer.css"),

  tags$link(rel="stylesheet", href="css/paper_stack.css"),
  tags$link(rel="stylesheet", type="text/css", href="css/highlights.css"),
  tags$link(rel="stylesheet", type="text/css", href="css/chat_device.css"),
  tags$link(rel = "stylesheet", href = "css/flashcards.css"),
  tags$link(rel = "stylesheet", href = "css/matching_game.css"),
  tags$link(rel = "stylesheet", href = "css/sentence_checklist.css"),
  tags$link(rel = "stylesheet", href = "css/sorting.css"),
  tags$link(rel = "stylesheet", href = "css/flag_practice.css"),
  tags$link(rel = "stylesheet", href = "css/instruction_cards.css"),
  tags$link(rel = "stylesheet", type = "text/css", href = "css/highlighter.css"),
  tags$link(rel = "stylesheet", type = "text/css", href = "css/fill_in_the_blanks.css?v=4"),


  tags$script(src="js/highlight_click_state.js"),
  tags$script(src = "js/highlighter.js"),
  tags$script(src = "js/emoji_picker.js"),
  tags$script(src = "js/card-complete.js"),
  tags$script(src = "js/fig_nav_keys.js"),
  tags$script(src = "js/modal-scroll-fix.js"),
  

  tags$link(rel="stylesheet", href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&display=swap"),
  tags$link(rel="stylesheet", href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"),
  tags$link(rel="stylesheet", href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"),

  tags$meta(name="viewport", content="width=device-width, initial-scale=1.0"),

  tags$link(
  rel = "stylesheet",
  href = "https://cdn.jsdelivr.net/npm/open-dyslexic@1.0.3/open-dyslexic-regular.css"
  ),
  tags$style(HTML("
    body.dyslexia-font,
    body.dyslexia-font * {
      font-family: 'OpenDyslexic', system-ui, -apple-system, 'Segoe UI', Roboto, Arial, sans-serif !important;
    }
  "))
),

  nav_panel(
  title = tagList(
    bs_icon("info-circle"),
    " Introduction"
  ),
  value = "introduction",
  introduction_module_ui("introduction")
  ),

  nav_panel(
    title = tagList(
      bs_icon("file-text"),
      " What is a Paper?"
    ),
    value = "what_is_a_paper",
    what_is_a_paper_module_ui("what_is_a_paper")
  ),

  nav_panel(
    title = tagList(
      bs_icon("heart-pulse"),
      " Anatomy"
    ),
    value = "anatomy",
    anatomy_module_ui("anatomy")
  ),

  nav_panel(
    title = tagList(
      bs_icon("puzzle"),
      " Strategies"
    ),
    value = "strategies",
    strategies_module_ui("strategies")
  ),

  nav_panel(
    title = tagList(
      bs_icon("calculator"),
      " Stats Refresher"
    ),
    value = "stats",
    stats_module_ui("stats")
  ),

  nav_panel(
    title = tagList(
      bs_icon("dice-2"),
      " Practice"
    ),
    value = "practice",
    practice_module_ui("practice")
  ),
  nav_panel(
    title = tagList(
      bs_icon("card-checklist"),
      " Your Turn"
    ),
    value = "your_turn",
    practice_your_turn_module_ui("your_turn")
  ),

  nav_panel(
    title = tagList(
      bs_icon("search"),
      " Searching"
    ),
    value = "searching",
    searching_module_ui("searching")
  ),

  nav_panel(
    title = tagList(
      bs_icon("collection"),
      " Citing"
    ),
    value = "citing",
    citing_module_ui("citing")
  ),

  nav_panel(
    title = tagList(
      bs_icon("tools"),
      " Tools"
    ),
    value = "tools",
    tools_module_ui("tools")
  ),

  

  nav_item(
  tags$div(
    class = "ps-navswitch form-check form-switch",
    tags$input(
      id = "dyslexia_font",
      type = "checkbox",
      class = "form-check-input",
      role = "switch"
    ),
    tags$label(
      class = "form-check-label",
      `for` = "dyslexia_font",
      tagList(
        bs_icon("eyeglasses"),
        tags$span("Dyslexia")
      )
    )
  )
),



  nav_menu(
    title = tagList(
      bs_icon("three-dots"),
      ""
    ),
    nav_item(
  shiny::actionLink(
    inputId = "open_about",
    label = "About",
    class = "ps-topmenu-link"
  )
),
 nav_item(
  shiny::actionLink(
    inputId = "open_bib",
    label = "Bibliography",
    class = "ps-topmenu-link"
  )
)

  
  ),


  # footer
  footer = tags$footer(
    class = "app-footer",
    div(
      class = "footer-inner",
      span("Ex Libris"),
      tags$a(
        href = "https://paperstars.org",
        target = "_blank",
        tags$img(
          src = "assets/Paperstars_Logo_White_S.png",
          alt = "Paperstars",
          class = "footer-logo"
        )
      )
    )
  )
)

server <- function(input, output, session) {

  observe({
  if (isTRUE(input$dyslexia_font)) {
    shinyjs::addClass(selector = "body", class = "dyslexia-font")
  } else {
    shinyjs::removeClass(selector = "body", class = "dyslexia-font")
  }
})

  markdown_path <- reactiveVal("markdown/english/")

  observeEvent(input$selected_language, {
    if (input$selected_language == "en") {
      markdown_path("markdown/english/")
    } else if (input$selected_language == "de") {
      markdown_path("markdown/german/")
    }
  }
  )

  include_markdown_language <- function(filepath) {
    includeMarkdown(file.path(markdown_path(), filepath))
  }



process_markdown <- function(filepath) {

  full_path <- file.path(markdown_path(), filepath)
  
  rmd_content <- readLines(full_path, warn = FALSE)
  processed_rmd <- whisker::whisker.render(paste(rmd_content, collapse = "\n"))
  
  html_output <- HTML(markdown::markdownToHTML(text = processed_rmd, fragment.only = TRUE))
  
  return(html_output)
}

process_rmd_fragment <- function(filepath,
                                 ns,
                                 wrapper_class = "prose",
                                 base_dir = NULL,
                                 quiet = TRUE,
                                 ...) {
  full_path <- if (!is.null(base_dir)) file.path(base_dir, filepath) else filepath

  env_list <- c(list(ns = ns), list(...))
  knit_env <- list2env(env_list, parent = environment())

  md <- knitr::knit_child(full_path, quiet = quiet, envir = knit_env)

  html_str <- markdown::markdownToHTML(
    text = paste(md, collapse = "\n"),
    fragment.only = TRUE
  )
  htmltools::tags$div(class = wrapper_class, htmltools::HTML(html_str))
}

observeEvent(input$open_about, {
  showModal(
    modalDialog(
      title = "About",
      size = "l",
      easyClose = TRUE,
      footer = modalButton("Close"),

      div(
        class = "ps-about-modal",
        uiOutput("about_text")
      )
    )
  )
})

output$about_text <- renderUI({
        process_markdown("about.md")
      })

observeEvent(input$open_bib, {
  showModal(
    modalDialog(
      title = "Bibliography",
      size = "l",
      easyClose = TRUE,
      footer = modalButton("Close"),

      div(
        class = "ps-about-modal",
        uiOutput("bib_text")
      )
    )
  )
})


output$bib_text <- renderUI({
        process_markdown("bibliography.md")
      })


  introduction_module_server("introduction", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  what_is_a_paper_module_server("what_is_a_paper", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  anatomy_module_server("anatomy", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  strategies_module_server("strategies", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown, process_rmd_fragment = process_rmd_fragment)
  stats_module_server("stats", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown, process_rmd_fragment = process_rmd_fragment)
  practice_module_server("practice", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown, process_rmd_fragment = process_rmd_fragment)
  practice_your_turn_module_server("your_turn", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown, process_rmd_fragment = process_rmd_fragment)

  searching_module_server("searching", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  tools_module_server("tools", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  citing_module_server("citing", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
}



shinyApp(ui, server)
