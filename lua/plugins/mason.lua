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
                ensure_installed = { "eslint", "lua_ls", "ts_ls" }
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig"
    },
}
