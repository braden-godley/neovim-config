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
	-- theme
	{
		"ellisonleao/gruvbox.nvim", priority = 1000 , config = true
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	-- completions
	{
		"hrsh7th/nvim-cmp",
	},
	-- completions from lsp?
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/cmp-buffer",
	},
	{
		"hrsh7th/cmp-path",
	},
	{
		"hrsh7th/cmp-cmdline",
	},
	-- snippets engine
	{
		"L3MON4D3/LuaSnip",
	},
	{
		"saadparwaiz1/cmp_luasnip",
	},
	-- the snippets themselves
	{
		"rafamadriz/friendly-snippets",
	},
	-- close buffers
	{
		"moll/vim-bbye",
	},
}
