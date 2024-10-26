-- define <Leader> key to ,
vim.g.mapleader = ","

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

