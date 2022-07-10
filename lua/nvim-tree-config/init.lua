-- OR setup with some options
require("nvim-tree").setup({
	auto_reload_on_write = false,
	diagnostics = { enable = true },
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = "t", action = "tabnew" },
				{ key = "s", action = "vsplit" },
				{ key = "v", action = "split" },
				{ key = "o", action = "system_open" },
				{ key = "W", action = "collapse_all" },
				{ key = "S", action = "search_node" },
				{ key = "R", action = "refresh" },
				{ key = "ma", action = "create" },
				{ key = "md", action = "remove" },
				{ key = "f", action = "live_filter" },
				{ key = "F", action = "clear_live_filter" },
			},
		},
	},
	log = {
		enable = true,
		truncate = true,
		types = {
			git = true,
			profile = true,
		},
	},
	filters = {
		dotfiles = true,
	},
})
