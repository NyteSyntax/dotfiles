vim.pack.add({
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
})

require("kanagawa").setup({
	transparent = true,
	undercurl = true,
	functionStyle = { bold = false, italic = true },
	dimInactive = false,
	terminalColors = true,
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
	-- Override highlight groups for transparent floating windows
	overrides = function(colors)
		return {
			NormalFloat = { bg = "none" },
			FloatBorder = { bg = "none" },
			FloatTitle = { bg = "none" },
		}
	end,
})

vim.cmd("colorscheme kanagawa")
