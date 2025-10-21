vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

local treesitters = { "lua", "c", "cpp", "yaml", "json", "zig", "odin" }

require("nvim-treesitter").install(treesitters)

vim.api.nvim_create_autocmd("FileType", {
	pattern = treesitters,
	callback = function()
		vim.treesitter.start()
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
