library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(bslib)
library(tidyverse)
library(markdown)

nav_order_list <- c(
  "introduction",
  "what_is_a_paper",
  "anatomy",
  "strategies",
  "practice",
  "searching",
  "tools"
)

get_next_nav <- function(current, nav_order_list) {
  idx <- match(current, nav_order_list)
  if (is.na(idx) || idx == length(nav_order_list)) return(current)
  nav_order_list[[idx + 1]]
}

get_prev_nav <- function(current, nav_order_list) {
  idx <- match(current, nav_order_list)
  if (is.na(idx) || idx == 1) return(current)
  nav_order_list[[idx - 1]]
}