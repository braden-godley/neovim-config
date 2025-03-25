return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        }
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        lazy = true,
        config = function()
            require("gitsigns").setup()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup()
        end
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = function()
            require("Comment").setup({
                padding = true,
                sticky = true,
                toggler = {
                    line = 'gcc',
                    block = 'gbc',
                },
            })
        end
    },
    { "moll/vim-bbye", },
}
