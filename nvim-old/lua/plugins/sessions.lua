return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			session_lens = {
				load_on_setup = true, -- Initialize on startup (requires Telescope)
				theme_conf = { -- Pass through for Telescope theme options
					-- layout_config = { -- As one example, can change width/height of picker
					--   width = 0.8,    -- percent of window
					--   height = 0.5,
					-- },
				},
				previewer = false, -- File preview for session picker

				mappings = {
					-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
					delete_session = { "i", "<C-D>" },
					alternate_session = { "i", "<C-S>" },
					copy_session = { "i", "<C-Y>" },
				},

				session_control = {
					control_dir = vim.fn.stdpath("data") .. "/auto_session/",
					control_filename = "session_control.json",
				},
			},
		})
	end,
}
