local wezterm = require 'wezterm';

local padding = {
  left = "0.5cell",
  right= "0.5cell",
  top = "0.5cell",
  bottom= "1.5cell"
}

return {
  font_size = 15.0,
  font = wezterm.font("JetBrains Mono"),

  window_padding = padding,
  hide_tab_bar_if_only_one_tab = true,

  color_scheme = "Elemental",
  -- window_background_opacity = 0.0,
  window_decorations = "RESIZE",

  -- default_prog = { '/usr/bin/fish', '-l' }
  
  }

