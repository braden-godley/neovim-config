return {
	-- find files
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	-- tabs and buffers
	{
		"akinsho/bufferline.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" }
	},
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
	},
	-- lsp
	{
		"neovim/nvim-lspconfig",
	},
	-- project tree
	{
		"nvim-tree/nvim-tree.lua",
	},
	-- copilot completions
	{
		"github/copilot.vim",
	},
	-- auto completions
	{
		"ms-jpq/coq_nvim",
		branch = "coq",
	},
	-- snippets
	{
		"ms-jpq/coq.artifacts",
		branch = "artifacts",
	},
	-- theme
	{
		"ellisonleao/gruvbox.nvim", priority = 1000 , config = true
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
}
