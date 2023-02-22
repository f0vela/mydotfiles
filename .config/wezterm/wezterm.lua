local wezterm = require 'wezterm'
local colors = require('rose-pine').colors()
local window_frame = require('rose-pine').window_frame()

return {
  font = wezterm.font("FiraCode Nerd Font", {weight="Regular", stretch="Normal", style="Normal"}),
  font_size = 11.0,

  hide_tab_bar_if_only_one_tab = false,
  --color_scheme = "Catppuccin Macchiato",
  window_background_opacity = 0.95,
  enable_scroll_bar = true,
  
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  tab_max_width = 25,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,

  initial_cols = 128,
  initial_rows = 40,

  window_padding = {
    left = 10,
    right = 10,
    top = 15,
    bottom = 10,
 },

  inactive_pane_hsb = {
    saturation = 1.0,
    brightness = 0.85,
  },

  window_close_confirmation = "NeverPrompt",
  window_frame = {
    active_titlebar_bg = "#090909",
    font_size = 9,
  },
  automatically_reload_config = true,

  colors = colors,
  window_frame = window_frame,
  window_decorations = "RESIZE",

  hyperlink_rules = {
    {
        regex = "\\b\\w+://[\\w.-]+:[0-9]{2,15}\\S*\\b",
        format = "$0",
    },
    {
        regex = "\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b",
        format = "$0",
    },
    {
        regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]],
        format = "mailto:$0",
    },
    {
        regex = [[\bfile://\S*\b]],
        format = "$0",
    },
    {
        regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
        format = "$0",
    },
    {
        regex = [[\b[tT](\d+)\b]],
        format = "https://example.com/tasks/?t=$1",
    },
  },
}