local status_ok, Aerial = pcall(require, "aerial")
if not status_ok then return end

local map = vim.api.nvim_buf_set_keymap

Aerial.setup({
	on_attach = function(bufnr)
		-- Toggle the aerial window with <leader>a
		map(bufnr, "n", "<leader>a", "<cmd>AerialToggle!<CR>", {})
		-- Jump forwards/backwards with '{' and '}'
		map(bufnr, "n", "{", "<cmd>AerialPrev<CR>", {})
		map(bufnr, "n", "}", "<cmd>AerialNext<CR>", {})
		-- Jump up the tree with '[[' or ']]'
		map(bufnr, "n", "[[", "<cmd>AerialPrevUp<CR>", {})
		map(bufnr, "n", "]]", "<cmd>AerialNextUp<CR>", {})
	end,
})
