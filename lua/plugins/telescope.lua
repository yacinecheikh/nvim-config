return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
		"nvim-telescope/telescope-media-files.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-file-browser.nvim",
		"ahmedkhalf/project.nvim",
	},
	config = function()
		require("telescope").setup {
			extensions = {
				file_browser = {
					theme = "ivy",
					hijack_netrw = true,
					mappings = {
						["i"] = {
							-- insert mode mappings
						},
						["n"] = {
							-- normal mode mappings
						},
					},
				},
			},
		}
	end,

	--config = function()
	--	require("telescope").setup {
	--		defaults = {
	--			file_ignore_patterns = { ".git/", ".cache/" },
	--			prompt_prefix = " ",
	--			selection_caret = " ",
	--			entry_prefix = "  ",
	--			initial_mode = "insert",
	--			selection_strategy = "reset",
	--			sorting_strategy = "descending",
	--			layout_strategy = "horizontal",
	--			layout_config = {
	--				horizontal = {
	--					prompt_position = "top",
	--					preview_width = 0.55,
	--					results_width = 0.8,
	--				},
	--				vertical = {
	--					mirror = false,
	--				},
	--				width = 0.87,
	--				height = 0.80,
	--				preview_cutoff = 120,
	--			},
	--			file_sorter = require("telescope.sorters").get_fuzzy_file,
	--			file_ignore_patterns = { "node_modules", "__pycache__" },
	--			generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
	--			path_display = { "smart" },
	--			winblend = 0,
	--			border = {},
	--			borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	--			color_devicons = true,
	--			set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
	--			file_previewer = require("telescope.previewers").vim_buffer_cat.new,
	--			grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
	--			qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
	--			-- Developer configurations: Not meant for general override
	--			buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
	--		},
	--		extensions = {
	--			fzf = {
	--				fuzzy = true, -- false will only do exact matching
	--				override_generic_sorter = false, -- override the generic sorter
	--				override_file_sorter = true, -- override the file sorter
	--				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
	--				-- the default case_mode is "smart_case"
	--			},
	--		},
	--	}
	--end,
}
