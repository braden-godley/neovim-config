return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		lazy = false,
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"eslint",
					"lua_ls",
					"ts_ls",
				},
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("lspconfig").lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim" },
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})
			require("lspconfig").ts_ls.setup({
				capabilities = capabilities,
			})
			require("lspconfig").gopls.setup({
				capabilities = capabilities,
			})
			require("lspconfig").eslint.setup({
				capabilities = capabilities,
			})
		end,
	},
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
}
