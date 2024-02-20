path = 'C:/Users/jting/OneDrive/Pictures/Wallpapers'

function randImg()
	local path = 'C:/Users/jting/OneDrive/Pictures/Wallpapers/'
	local files = {}
	for file in io.popen('ls "'..path..'"'):lines() do
		table.insert(files, file)
	end
	if #files == 0 then
		return nil
	end
	local out = path .. files[math.random(1, #files)]
	local file = io.open("output.txt", "w")
	if file then
		file:write(out)
		file:close()
	end
end

local wezterm = require 'wezterm'

local config = wezterm.config_builder()

--config.default_domain = 'WSL:Ubuntu'
config.font = wezterm.font 'BlexMono Nerd Font Mono Text'
config.color_scheme = 'Thayer Bright'
--config.color_scheme = 'tokyonight_night'

config.window_decorations = "RESIZE"

config.initial_cols = 100

config.default_prog = { "C:/Program Files/Git/bin/bash.exe" }

config.window_background_image = path .. '/boygenius-suits.png'
--config.window_background_image = randImg()
--config.window_background_image = os.excecute('./img.sh') .. '/boygenius-suits.png'

config.window_background_image_hsb = {
	brightness = 0.2,
	hue = 1.0,
	saturation = 1.0,
}

return config
