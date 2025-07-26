local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

local cs = "Modus-Operandi"
local scheme = wezterm.get_builtin_color_schemes()[cs]

config = {
	font = wezterm.font_with_fallback({ "Fira Code", "Noto Sans" }),
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	enable_scroll_bar = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	inactive_pane_hsb = {
		saturation = 0.5,
		brightness = 0.1,
	},
	color_scheme = cs,
}

config.keys = {
	{ key = "t", mods = "ALT", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "\\", mods = "ALT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "-", mods = "ALT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "r", mods = "ALT", action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }) },
	{ key = "z", mods = "ALT", action = act.TogglePaneZoomState },
	{ key = "[", mods = "ALT", action = act.ActivateTabRelative(-1) },
	{ key = "]", mods = "ALT", action = act.ActivateTabRelative(1) },
	{
		key = "c",
		mods = "ALT",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
}

config.key_tables = {
	resize_pane = {
		{ key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
		{ key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },
		{ key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
		{ key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
		{ key = "Escape", action = "PopKeyTable" },
		{ key = "Enter", action = "PopKeyTable" },
		{ key = "q", action = "PopKeyTable" },
	},
}

local function tab_title(tab_info)
	local title = tab_info.tab_title
	if title and #title > 0 then
		return title
	end
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab)
	local active_pane_zoomed = tab.active_pane.is_zoomed and "(Z)" or ""
	local title = tab_title(tab)
	if tab.active_pane.is_zoomed then
		return {
			{ Foreground = { Color = scheme.brights[4] } },
			{ Text = " " .. title .. " " .. active_pane_zoomed .. " " },
		}
	end
end)

return config
