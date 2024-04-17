-- local function trytwo()
-- 	local path = 'C:/Users/jting/OneDrive/Pictures/Wallpapers/'
-- 	local files = {}
-- 	for dir in io.popen([[dir "C:/Users/jting/OneDrive/Pictures/Wallpapers"]]):lines() do
-- 		table.insert(files, dir)
-- 	end
-- 	print(path .. files[math.random(1, #files)])
-- end
-- 
-- trytwo()
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {'BlexMono Nerd Font Mono Text'}
config.color_scheme = 'Thayer Bright'

config.window_decorations = "RESIZE"

config.initial_cols = 100

config.default_prog = { "C:/Program Files/Git/bin/bash.exe" }

--config.window_background_image = path .. '/boygenius-suits.png'
--config.window_background_image = randImg()
--config.window_background_image = os.excecute('./img.sh') .. '/boygenius-suits.png'
config.window_background_image = 'C:/Users/jting/OneDrive/Pictures/Wallpapers/boygenius.jpg'

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
