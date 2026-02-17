library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(bslib)
library(tidyverse)
library(markdown)
library(shinyWidgets)
library(knitr)
library(DT)
library(openalexR)
library(bsicons)
library(purrr)
library(fontawesome)
library(whisker)
library(sortable)

nav_order_list <- c(
  introduction      = "Introduction",
  what_is_a_paper   = "What is a Paper?",
  anatomy           = "Anatomy",
  advice            = "Advice",
  strategies        = "Strategies",
  stats             = "Statistics",
  practice          = "Practice",
  your_turn         = "Your Turn",
  searching         = "Searching",
  citing            = "Citing",
  tools             = "Tools"
)

get_next_nav <- function(current, nav_order_list) {
  ids <- names(nav_order_list)
  idx <- match(current, ids)
  if (is.na(idx) || idx == length(ids)) return(current)
  ids[[idx + 1]]
}

get_prev_nav <- function(current, nav_order_list) {
  ids <- names(nav_order_list)
  idx <- match(current, ids)
  if (is.na(idx) || idx == 1) return(current)
  ids[[idx - 1]]
}