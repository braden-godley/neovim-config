local lspconfig = require('lspconfig')

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- More LSP configurations can be found here:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

lspconfig.intelephense.setup{
	capabilities = capabilities,
    init_options = {
        licenceKey = "$HOME/.config/intelephense/licence.txt"
    },
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

lspconfig.marksman.setup{
	capabilities = capabilities,
}

local configs = require "lspconfig.configs"
configs.blade = {
	default_config = {
		cmd = { "laravel-dev-generators", "lsp" },
		filetypes = { "blade" },
		root_dir = function(fname)
			return lspconfig.util.find_git_ancestor(fname)
		end,
		settings = {},
	}
}

lspconfig.blade.setup{
	capabilities = capabilities,
}
