require("supermaven-nvim").setup {
  keymaps = {
    accept_suggestion = "<Tab>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
  color = {
    suggestion_color = "#c5c5c5",
    cterm = 244,
  },
  log_level = "info",
  disable_inline_completion = true,
  disable_keymaps = false,
  condition = function() return false end,
}
