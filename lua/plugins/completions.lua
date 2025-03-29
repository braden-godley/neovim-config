return {
	{
		"saghen/blink.cmp",
		version = "1.*",
		opts = {
			keymap = {
				preset = "none",
				["<CR>"] = { "accept", "fallback" },
				["<C-n>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },
				["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
				["<Tab>"] = { "snippet_forward", "fallback" },
				["<S-Tab>"] = { "snippet_backward", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				documentation = {
					auto_show = false,
				},
			},
			sources = {
				default = {
					"lsp",
					"path",
					"buffer",
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
