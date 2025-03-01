local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
	default_cursor_style = "SteadyBar",
	automatically_reload_config = true,
	-- window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,
	native_macos_fullscreen_mode = false,
	window_decorations = "RESIZE",
	window_background_opacity = 0.8,
	macos_window_background_blur = 70,
	check_for_updates = false,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = false,
	font_size = 13.5,
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	enable_tab_bar = false,
	window_padding = {
		left = 4,
		right = 4,
		top = 16,
		bottom = 4,
	},
	-- background = {
	--   {
	--     source = {
	--       File = "/Users/harry/Documents/Harry/Image/Goodone/white-wolf.jpg",
	--     },
	--     hsb = {
	--       hue = 1.0,
	--       saturation = 1.02,
	--       brightness = 0.25,
	--     },
	--     -- attachment = { Parallax = 0.3 },
	--     -- width = "100%",
	--     -- height = "100%",
	--   },
	--   {
	--     source = {
	--       Color = "#282c35",
	--     },
	--     width = "100%",
	--     height = "100%",
	--     opacity = 0.55,
	--   },
	-- },
	-- from: https://akos.ma/blog/adopting-wezterm/
	hyperlink_rules = {
		-- Matches: a URL in parens: (URL)
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in brackets: [URL]
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in curly braces: {URL}
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in angle brackets: <URL>
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		-- Then handle URLs not wrapped in brackets
		{
			-- Before
			--regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
			--format = '$0',
			-- After
			regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
			format = "$1",
			highlight = 1,
		},
		-- implicit mailto link
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},
	colors = {
		tab_bar = {
			background = "rgba(0,0,0,0.8)",
		},
	},
}
return config
