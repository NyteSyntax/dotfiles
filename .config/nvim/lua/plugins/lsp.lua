vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/b0o/SchemaStore.nvim" },
})

local lsp_on_attach_group = vim.api.nvim_create_augroup("LspMappings", {})
vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp_on_attach_group,
	callback = function(event)
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if not client then
			return
		end
		local bufnr = event.buf
		local keymap = vim.keymap.set
		local opts = {
			noremap = true,
			silent = true,
			buffer = bufnr,
		}

		keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
		keymap("n", "<leader>gs", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts)
		keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
		keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
		keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
		keymap("n", "<leader>i", function()
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
		end, opts)
	end,
})

vim.lsp.enable({ "lua_ls", "clangd", "yamlls", "jsonls", "zls", "ols" })
