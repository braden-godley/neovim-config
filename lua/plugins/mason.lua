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
                }
            })
            require("lspconfig").lua_ls.setup {
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            globals = { 'vim' },
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            }
            require("lspconfig").ts_ls.setup {}
            require("lspconfig").gopls.setup {}
            require("lspconfig").eslint.setup {}
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig"
    },
}
