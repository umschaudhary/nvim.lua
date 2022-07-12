require("nightfox").setup({
	options = {
		terminal_colors = true,
		transparent = true,
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic,bold",
		},
	},
})
vim.cmd[[
  colorscheme duskfox
  highlight CursorLine guibg=#232831 ctermbg=234
]]
