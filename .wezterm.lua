-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action


-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Appearance
config.color_scheme = 'nightfox'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14
config.colors = {
	-- default text Color
	foreground = "#819CCC",
	-- default background Color
	background = "#05001C",
	
	-- cursor and cursor style set to block
	cursor_bg = "#FFFFFF",
	-- override text color when current cell is occcupied by the cursor
	-- cursor_fg = "black"

	-- the foreground color of selected text
	-- selection_fg = 'black',

	-- the background color of selected text
	-- selection_bg = '#fffacd',

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = '#222222',

	-- The color of the split lines between panes
	-- split = '#444444',
	ansi = {
		'#121212',
		'#A52AFF',
		'#7129FF',
		'#3D2AFF',
		'#2B4FFF',
		'#881798',
		'#28B9FF',
		'#F1F1F1',
		},
	brights = {
		'#666666',
		'#BA5AFF',
		'#905AFF',
		'#4D4FFF',
		'#5C78FF',
		'#B4009E',
		'#5AC8FF',
		'#FFFFFF',
		},
}


config.background = {
	{
		source = {
			File = "C:/Users/egotkowski/OneDrive - Q2e/Pictures/WallPapers/vecteezy_arctic-aurora-borealis-over-night-lake-in-sky_14603121.jpg",
		},
	},
	{
		source = {
			Color = "rgba(5, 0, 28, 0.9)",
		},
		height = "100%",
		width = "100%",
	},
}

-- Startup
config.default_gui_startup_args = { 'ssh', 'egotkowski-co-jb.q2dc.local' }


-- Tabs
config.enable_tab_bar = false

-- Keybindings
config.keys = {
	-- Toggle Full Screen
	{ key = 'n', mods = 'SHIFT|CTRL', action = wezterm.action.ToggleFullScreen },
	-- paste from the clipboard
	{ key = 'v', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
	-- paste from the primary selection
	{ key = 'v', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
 
 }

-- and finally, return the configuration to wezterm
return config
