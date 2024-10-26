return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
		--light_style = "day", -- The theme is used when the background is set to light
		transparent = false, -- Enable this to disable setting the background color
		--terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
		--styles = {
		--	-- Style to be applied to different syntax groups
		--	-- Value is any valid attr-list value for `:help nvim_set_hl`
		--	comments = { italic = true },
		--	keywords = { italic = true },
		--	functions = {},
		--	variables = {},
		--	-- Background styles. Can be "dark", "transparent" or "normal"
		--	sidebars = "dark", -- style for sidebars, see below
		--	floats = "dark", -- style for floating windows
		--},
		--sidebars = {
		--	-- Style for sidebars, see below
		--	-- Setting this to `nil` will remove the sidebars
		--	bg = "dark", -- `light` or `dark`
		--	-- Overrides the default highlight groups for sidebars
		--	highlights = {},
		--},
		--floats = {
		--	-- Style for floating windows
		--	-- @default `dark`
		--	bg = "dark",
		--	-- Overrides the default highlight groups for floating windows
		--	highlights = {},
		--},
	},
}
