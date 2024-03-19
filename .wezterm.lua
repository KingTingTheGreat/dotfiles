--local function randImg()
--	local path = 'C:/Users/jting/OneDrive/Pictures/Wallpapers/'
--	local files = {'boygenius.jpg', 'boygenius-suits.png', 'boygenius1.png', 'boygenius2.png', 'boygenius3.png'}
--	if #files == 0 then
--		return nil
--	end
--	local image = files[math.random(1, #files)]
--	return path .. image
--end

local wezterm = require 'wezterm'

local config = wezterm.config_builder()

--config.default_domain = 'WSL:Ubuntu'
config.font = wezterm.font_with_fallback {'BlexMono Nerd Font Mono Text'}
config.color_scheme = 'Thayer Bright'
--config.color_scheme = 'tokyonight_night'

config.window_decorations = "RESIZE"

config.initial_cols = 100

config.default_prog = { "C:/Program Files/Git/bin/bash.exe" }

--config.window_background_image = path .. '/boygenius-suits.png'
--config.window_background_image = randImg()
--config.window_background_image = os.excecute('./img.sh') .. '/boygenius-suits.png'
config.window_background_image = 'C:/Users/jting/OneDrive/Pictures/Wallpapers/boygenius.jpg'

config.window_background_image_hsb = {
	brightness = 0.2,
	hue = 1.0,
	saturation = 1.0,
}

return config
