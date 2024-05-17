-- use space as leader key
vim.g.mapleader = " "

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fw', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})

-- bufferline
local bufferline = require('bufferline')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })

-- vim bbye
vim.keymap.set('n', '<leader>c', ':Bdelete<CR>', { silent = true })

-- nvim tree
vim.keymap.set('n', '<leader>e', ":NvimTreeOpen<CR>", { silent = true })

-- move between panes
vim.keymap.set('n', '<C-h>', ":wincmd h<CR>", { silent = true })
vim.keymap.set('n', '<C-j>', ":wincmd j<CR>", { silent = true })
vim.keymap.set('n', '<C-k>', ":wincmd k<CR>", { silent = true })
vim.keymap.set('n', '<C-l>', ":wincmd l<CR>", { silent = true })

-- lsp stuff
vim.keymap.set('n', '<S-k>', ':lua vim.lsp.buf.hover()<CR>', { silent = true })
vim.keymap.set('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', { silent = true })
vim.keymap.set('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', { silent = true })
vim.keymap.set('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', { silent = true })
vim.keymap.set('n', 'gr', ':lua vim.lsp.buf.references()<CR>', { silent = true })
vim.keymap.set('n', 'gs', ':lua vim.lsp.buf.signature_help()<CR>', { silent = true })
vim.keymap.set('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>', { silent = true })
vim.keymap.set('n', 'fr', ':lua vim.lsp.buf.rename()<CR>', { silent = true })
vim.keymap.set('n', 'ga', ':lua vim.lsp.buf.code_action()<CR>', { silent = true })

-- copilot
vim.keymap.set('i', '<C-f>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<C-h>', '<Plug>(copilot-dismiss)')

-- better indenting
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })

