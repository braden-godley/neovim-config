local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.opt.rtp:prepend(vim.fn.stdpath('config'))


-- vim.opt.runtimepath:append('/Users/bradengodley/.config/nvim')

local plugins = require("plugins")

require("lazy").setup(plugins)

local bufferline = require("bufferline")
bufferline.setup{
	options = {
		mode = "buffers",
		style_preset = bufferline.style_preset.minimal,
		themable = false,
		show_buffer_close_icons = false,
	},
}

require("nvim-tree").setup()

require("Comment").setup{
	padding = true,
	sticky = true,
	toggler = {
		line = 'gcc',
		block = 'gbc',
	},
}

-- setup mappings and lsps
require("opts")
require("mappings")
require("lsps")
require("completions")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
