vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.nvim" },
})

require("mini.icons").setup()
require("mini.pairs").setup()
require("mini.completion").setup()
require("mini.cursorword").setup()
require("mini.indentscope").setup()
require("mini.notify").setup()
require("mini.statusline").setup()
require("mini.pick").setup()
require("mini.extra").setup()
-- require("mini.animate").setup()
require("mini.move").setup({
	mappings = {
		left = "<M-S-h>",
		right = "<M-S-l>",
		down = "<M-S-j>",
		up = "<M-S-k>",
		line_left = "<M-S-h>",
		line_right = "<M-S-l>",
		line_down = "<M-S-j>",
		line_up = "<M-S-k>",
	},
})

-- ripgrep config to search hidden files
local load_temp_rg = function(f)
	local rg_env = "RIPGREP_CONFIG_PATH"
	local cached_rg_config = vim.uv.os_getenv(rg_env) or ""
	vim.uv.os_setenv(rg_env, vim.fn.stdpath("config") .. "/.rg")
	f()
	vim.uv.os_setenv(rg_env, cached_rg_config)
end

MiniPick.registry.gl = function()
	load_temp_rg(function()
		MiniPick.builtin.grep_live({ tool = "rg" })
	end)
end

vim.keymap.set("n", "<leader>pf", "<cmd>Pick files tool='rg'<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>pb", MiniPick.builtin.buffers, { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>pg", MiniPick.builtin.grep_live, { desc = "Live grep" })
vim.keymap.set("n", "<leader>pH", "<cmd>Pick gl<CR>", { desc = "Live grep hidden" })
vim.keymap.set("n", "<leader>ph", MiniExtra.pickers.history, { desc = "Pick history" })
vim.keymap.set("n", "<leader>pd", MiniExtra.pickers.diagnostic, { desc = "Pick diagnostics" })
vim.keymap.set("n", "<leader>pe", MiniExtra.pickers.explorer, { desc = "Pick explorer" })
vim.keymap.set("n", "<leader>ps", '<cmd>Pick lsp scope="document_symbol"<CR>', { desc = "Show document symbols" })
vim.keymap.set("n", "<leader>pr", '<cmd>Pick lsp scope="references"<CR>', { desc = "Show lsp references" })
