local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

local slash = package.config:sub(1, 1)
local my_os = slash == '/' and 'unix' or 'windows'

config = {
  font = wezterm.font("Fira Code"),
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  enable_scroll_bar = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  inactive_pane_hsb = {
    saturation = 0.5,
    brightness = 0.1,
  },
  color_scheme = 'Catppuccin Mocha',
}

if my_os == 'windows' then
  config.wsl_domains = {
    {
      name = 'WSL:Ubuntu',
      distribution = 'Ubuntu',
      username = "d",
      default_cwd = "~",
      default_prog = {"bash"},
    },
  }
  config.default_domain = 'WSL:Ubuntu'
end

config.keys = {
  { key = 't', mods = 'ALT', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = '\\', mods = 'ALT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = '-', mods = 'ALT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'h', mods = 'ALT', action = act.ActivatePaneDirection 'Left' },
  { key = 'j', mods = 'ALT', action = act.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'ALT', action = act.ActivatePaneDirection 'Up' },
  { key = 'l', mods = 'ALT', action = act.ActivatePaneDirection 'Right' },
  { key = 'p', mods = 'ALT', action = act.ShowLauncher },
  { key = 'r', mods = 'ALT', action = act.ActivateKeyTable { name = 'resize_pane', one_shot = false } },
  { key = 'z', mods = 'ALT', action = act.TogglePaneZoomState },
  { key = '[', mods = 'ALT', action = act.ActivateTabRelative(-1) },
  { key = ']', mods = 'ALT', action = act.ActivateTabRelative(1) },
}

config.key_tables = {
  resize_pane = {
    { key = 'h', action = act.AdjustPaneSize { 'Left', 1 } },
	{ key = 'j', action = act.AdjustPaneSize { 'Down', 1 } },
	{ key = 'k', action = act.AdjustPaneSize { 'Up', 1 } },
	{ key = 'l', action = act.AdjustPaneSize { 'Right', 1 } },
	{ key = 'Escape', action = 'PopKeyTable' },
	{ key = 'Enter', action = 'PopKeyTable' },
	{ key = 'q', action = 'PopKeyTable' },
  }
}

return config
