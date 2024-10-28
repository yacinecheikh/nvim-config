-- define <Leader> key to ,
vim.g.mapleader = ","
-- show line numbers
vim.opt.number = true

require("config.lazy")

require("telescope").load_extension("file_browser")
require("telescope").load_extension("projects")


--vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>fm", ":Telescope marks<CR>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>")
vim.keymap.set("n", "<leader>fr", ":Telescope resume<CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope search_history<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope grep_string<CR>")

vim.keymap.set("n", "<leader>ft", ":Neotree<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope grep_string<CR>")


-- always use system clipboard
-- vim.command("set clipboard=unnamedplus")

-- use system clipboard with ,y and ,p
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

--vim.colorscheme = "tokyonight"
--vim.api.colorscheme = "tokyonight"
vim.cmd("colorscheme tokyonight")


-- LSP

require("mason").setup()
require("mason-lspconfig").setup({
	-- add your LSP servers here to make sure they are installed
	--ensure_installed = {
	--	"rust_analyzer",
	--},
})



-- setup LSP servers and advertise the capabilities of nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason-lspconfig").setup_handlers({
	function(server_name)
		if server_name == "lua_ls" then
			return
		end
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
		--require("lspconfig")[server_name].setup({})
	end,
})

-- setup the vim global for nvim lua LSP
require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			--workspace = {
			--	library = vim.api.nvim_get_runtime_file("", true),
			--},
		},
	},
})

--require('mason-null-ls').setup({
--	automatic_installation = true,
--	automatic_setup = true,
--})

