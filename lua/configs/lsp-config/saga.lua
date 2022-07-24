local saga_ok, saga = pcall(require, "lspsaga")

if not saga_ok then
	return
end

saga.init_lsp_saga({
	-- Options with default value
	-- "single" | "double" | "rounded" | "bold" | "plus"
	border_style = "single",
	--the range of 0 for fully opaque window (disabled) to 100 for fully
	--transparent background. Values between 0-30 are typically most useful.
	saga_winblend = 0,
	-- when cursor in saga window you config these to move
	move_in_saga = { prev = "<C-p>", next = "<C-n>" },
	-- Error, Warn, Info, Hint
	-- use emoji like
	-- { "🙀", "😿", "😾", "😺" }
	-- or
	-- { "😡", "😥", "😤", "😐" }
	-- and diagnostic_header can be a function type
	-- must return a string and when diagnostic_header
	-- is function type it will have a param `entry`
	-- entry is a table type has these filed
	-- { bufnr, code, col, end_col, end_lnum, lnum, message, severity, source }
	diagnostic_header = { " ", " ", " ", "ﴞ " },
	-- show diagnostic source
	show_diagnostic_source = true,
	-- add bracket or something with diagnostic source, just have 2 elements
	diagnostic_source_bracket = {},
	-- preview lines of lsp_finder and definition preview
	max_preview_lines = 10,
	-- use emoji lightbulb in default
	code_action_icon = "💡",
	-- if true can press number to execute the codeaction in codeaction window
	code_action_num_shortcut = true,
	-- same as nvim-lightbulb but async
	code_action_lightbulb = {
		enable = true,
		sign = true,
		sign_priority = 20,
		virtual_text = true,
	},
	-- finder icons
	finder_icons = {
		def = "  ",
		ref = "諭 ",
		link = "  ",
	},
	-- custom finder title winbar function type
	-- param is current word with symbol icon string type
	-- return a winbar format string like `%#CustomFinder#Test%*`
	finder_action_keys = {
		open = "o",
		vsplit = "s",
		split = "i",
		tabe = "t",
		quit = "q",
		scroll_down = "<C-f>",
		scroll_up = "<C-b>", -- quit can be a table
	},
	code_action_keys = {
		quit = "q",
		exec = "<CR>",
	},
	rename_action_quit = "<C-c>",
	definition_preview_icon = "  ",
	-- show symbols in winbar must nightly
	symbol_in_winbar = {
		in_custom = false,
		enable = false,
		separator = " ",
		show_file = true,
		click_support = false,
	},
	-- show outline
	show_outline = {
		win_position = "right",
		-- set the special filetype in there which in left like nvimtree neotree defx
		left_with = "",
		win_width = 30,
		auto_enter = true,
		auto_preview = true,
		virt_text = "┃",
		jump_key = "o",
		-- auto refresh when change buffer
		auto_refresh = true,
	},
	-- if you don't use nvim-lspconfig you must pass your server name and
	-- the related filetypes into this table
	-- like server_filetype_map = { metals = { "sbt", "scala" } }
	server_filetype_map = {},
})

local action = require("lspsaga.codeaction")

-- code action
local map = vim.keymap.set
map("n", "<leader>ca", action.code_action, { silent = true, noremap = true })
map("v", "<leader>ca", function()
	vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
	action.range_code_action()
end, { silent = true, noremap = true })

local hover = require("lspsaga.hover")
map("n", "K", hover.render_hover_doc, { silent = true })

-- scroll down hover doc or scroll in definition preview
local action = require("lspsaga.action")

map("n", "<C-f>", function()
	action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll up hover doc
map("n", "<C-b>", function()
	action.smart_scroll_with_saga(-1)
end, { silent = true })

local signature = require("lspsaga.signaturehelp")
map("n", "<C-k>", signature.signature_help, { silent = true,noremap = true})

local definition = require("lspsaga.definition")
map("n", "<leader>pd", definition.preview_definition, { silent = true,noremap = true })

local diagnostic = require("lspsaga.diagnostic")
map("n", "<leader>cd", diagnostic.show_line_diagnostics, { silent = true,noremap = true })

-- jump diagnostic
map("n", "[d", diagnostic.goto_prev, { silent = true, noremap =true })
map("n", "]d", diagnostic.goto_next, { silent = true, noremap =true })

map("n", "[e", function()
  diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })
map("n", "]e", function()
  diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })

local lsp_finder = require("lspsaga.finder")
map("n", "<leader>gh", lsp_finder.lsp_finder, { silent = true,noremap = true })
