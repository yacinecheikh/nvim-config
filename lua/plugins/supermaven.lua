return {
	"supermaven-inc/supermaven-nvim",
	config = function()
		require("supermaven-nvim").setup({})
	end,
	opts = {
		keymaps = {
			--accept_suggestion = "<Tab>",
			--clear_suggestion = "<S-Tab>",
			--accept_word = "<C-j>",
		},
		--ignore_filetypes = { "cpp" = true },
		color = {
			suggestion_color = "#ffffff",
			cterm = 244,
		},
		log_level = "info", -- "off" to disable logging
		disable_inline_completion = true, --for use with cmp
		disable_keymaps = true, -- disable built-in keymaps for more manual control
		condition = function()
			return false
		end -- condition to disable the plugin

	},
}

