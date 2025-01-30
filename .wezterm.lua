local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- config.font = wezterm.font_with_fallback { 'BlexMono Nerd Font Mono Text' }
-- config.line_height = 0.8
-- config.color_scheme = 'Thayer Bright'
config.color_scheme = 'Aardvark Blue'

config.window_decorations = "RESIZE"

config.initial_cols = 120
config.initial_rows = 30

config.default_prog = { "C:/Program Files/Git/bin/bash.exe" }

config.window_background_image = "C:/Users/jting/OneDrive/Pictures/Wallpapers/the-rest.png"

config.window_background_image_hsb = {
	brightness = 0.3,
	hue = 1.0,
	saturation = 1.0,
}

config.keys = {
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
}

return config
