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
            require("gitsigns").setup {}
        end
    }
}
