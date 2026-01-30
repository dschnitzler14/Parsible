sb_notepad_emoji_picker_ui <- function(emojis) {
  htmltools::tags$div(
    class = "sb-emoji-picker",
    `data-emojis` = paste(emojis, collapse = ",")
    
  )
}