source("global.R")

library(shiny)
library(bslib)

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
  title = "Reading A Paper",
  id = "topnav",
  theme = theme,

  tags$head(
  tags$link(rel="stylesheet", href="styles.css"),
  tags$link(rel="stylesheet", href="css/paper_stack.css"),
  tags$link(rel = "stylesheet", type = "text/css", href = "css/highlights.css"),
  tags$meta(name = "viewport", content = "width=device-width, initial-scale=1.0")
),



  nav_panel(
    "Introduction",
    value = "introduction",
    introduction_module_ui("introduction")
  ),
  nav_panel(
    "What is a Paper?",
    value = "what_is_a_paper",
    what_is_a_paper_module_ui("what_is_a_paper")
  ),
  nav_panel(
    "Anatomy of a Paper",
    value = "anatomy",
    anatomy_module_ui("anatomy")
  ),
  nav_panel(
    "Reading Strategies",
    value = "strategies",
    strategies_module_ui("strategies")
  ),
  nav_panel(
    "Practice",
    value = "practice",
    practice_module_ui("practice")
  ),
  nav_panel(
    "Searching Papers",
    value = "searching",
    searching_module_ui("searching")
  ),
  nav_panel(
    "Useful Tools",
    value = "tools",
    tools_module_ui("tools")
  ),
  

  # footer
  footer = tags$footer(
    class = "app-footer",
    div(
      class = "footer-inner",
      span("Powered by"),
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




  introduction_module_server("introduction", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  what_is_a_paper_module_server("what_is_a_paper", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  anatomy_module_server("anatomy", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  strategies_module_server("strategies", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown, process_rmd_fragment = process_rmd_fragment)
  practice_module_server("practice", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  searching_module_server("searching", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
  tools_module_server("tools", parent_session = session, nav_order_list = nav_order_list, process_markdown = process_markdown)
}



shinyApp(ui, server)
