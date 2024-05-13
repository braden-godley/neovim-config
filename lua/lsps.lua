local lspconfig = require('lspconfig')

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.intelephense.setup{
	capabilities = capabilities,
}

lspconfig.tsserver.setup{
	capabilities = capabilities,
}

lspconfig.rust_analyzer.setup{
	capabilities = capabilities,
}

lspconfig.lua_ls.setup{
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	},
}

