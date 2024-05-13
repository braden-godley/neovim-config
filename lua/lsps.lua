local lspconfig = require('lspconfig')

lspconfig.intelephense.setup{}
lspconfig.tsserver.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.lua_ls.setup{
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	},
}
