local silent = { silent = true }

local function setupKeybinds()
	-- telescope
	local telescope = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
	vim.keymap.set("n", "<leader>fw", telescope.live_grep, {})
	vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
	vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
	vim.keymap.set("n", "<leader>fs", telescope.lsp_document_symbols, {})
	vim.keymap.set("n", "<leader>fg", telescope.git_commits, {})
	vim.keymap.set("n", "<leader>fG", telescope.git_bcommits, {})
	vim.keymap.set("n", "<leader>fj", telescope.jumplist, {})
	vim.keymap.set("n", "<leader>fo", telescope.oldfiles, {})
	vim.keymap.set("n", "<leader>fd", telescope.diagnostics, {})

	-- vim bbye
	vim.keymap.set("n", "<leader>c", ":Bdelete<CR>", { silent = true })

	-- nvim tree
	vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>", { silent = true })

	-- move between panes
	vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", silent)
	vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", silent)
	vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", silent)
	vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", silent)

	-- move between tabs
	vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", silent)
	vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", silent)

	-- lsp stuff
	vim.keymap.set("n", "<S-k>", ":lua vim.lsp.buf.hover()<CR>", { silent = true })
	vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { silent = true })
	vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { silent = true })
	vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", { silent = true })
	vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", { silent = true })
	vim.keymap.set("n", "gs", ":lua vim.lsp.buf.signature_help()<CR>", { silent = true })
	vim.keymap.set("n", "gt", ":lua vim.lsp.buf.type_definition()<CR>", { silent = true })
	vim.keymap.set("n", "ga", ":lua vim.lsp.buf.code_action()<CR>", { silent = true })
	vim.keymap.set("n", "gR", ":lua vim.lsp.buf.rename()<CR>", { silent = true })

	-- formatting
	vim.keymap.set("n", "<leader>fm", ':lua require("conform").format()<CR>', { silent = true })

	-- copilot
	vim.keymap.set("i", "<C-f>", 'copilot#Accept("\\<CR>")', {
		expr = true,
		replace_keycodes = false,
	})
	vim.g.copilot_no_tab_map = true
	vim.keymap.set("i", "<C-h>", "<Plug>(copilot-dismiss)")

	-- better indenting
	vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
end

setupKeybinds()
