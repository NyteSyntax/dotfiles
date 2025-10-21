return {
	init_options = {
		checker_args = "-strict-style",
		-- collections = {
		-- 	{ name = "shared", path = vim.fn.expand('$HOME/odin-lib') }
		-- },
		enable_semantic_tokens = true,
		enable_document_symbols = true,
		enable_document_highlights = true,
		enable_inlay_hints_params = true,
		enable_inlay_hints_default_params = false,
		enable_inlay_hints_implicit_return = true,
		enable_procedure_snippet = true,
		enable_hover = true,
		enable_snippets = true,
		enable_format = true,
		enable_fake_methods = true,
	},
}
