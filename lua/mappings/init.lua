local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ","

map("n", "<leader>v", ":NvimTreeFindFileToggle<CR>", opts)

-- barbar mappings
-- Move to previous/next
map("n", "gt", "<Cmd>BufferLineCycleNext<CR>", opts)

-- Goto buffer in position...
map("n", "<leader>b1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
map("n", "<leader>b2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
map("n", "<leader>b3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
map("n", "<leader>b4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
map("n", "<leader>b5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
map("n", "<leader>b6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
map("n", "<leader>b7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
map("n", "<leader>b8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
map("n", "<leader>b9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
map("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "bpn", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "bc", "<Cmd>BufferClose<CR>", opts)

--telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fc", ":Telescope git_commits<CR>", opts)

-- split
map("n", "<C-S-Left>", ":vertical resize +15<CR>", opts)
map("n", "<C-S-Right>", ":vertical resize -15<CR>", opts)
map("n", "<C-S-Down>", ":resize -3<CR>", opts)
map("n", "<C-S-UP>", ":resize +3<CR>", opts)

-- remap
map("i", "jj", "<Esc>", {})

--"split navigations
map("n", "<C-J>", "<C-W><C-J>", {})
map("n", "<C-L>", "<C-W><C-L>", {})
map("n", "<C-H>", "<C-W><C-H>", {})
map("n", "<C-K>", "<C-W><C-K>", {})

map("n", "<leader>z", "<c-w>_ | <c-w>|", {})
map("n", "<leader>o", "<c-w>=", {})

--navigation
map("i", "<C-h>", "<Left>", {})
map("i", "<C-k>", "<UP>", {})
map("i", "<C-l>", "<Right>", {})

-- line up or down
map("n", "<leader>s", ":m+<CR>", opts)
map("n", "<leader>w", ":m-2<CR>", opts)

map("n", "<leader><space>", ":noh<cr>:call clearmatches()<cr>", opts)
map("n", "<leader>r", ":luafile %<CR>", opts)
-- toggle term
--
map("n", "<leader>tt", ":ToggleTerm direction=float<CR>", opts)
map("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", opts)
map("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", opts)
-- formatter
map("n", "<leader>pp", ":lua vim.lsp.buf.formatting_sync()<CR>", opts)

--git signs
map("n", "gb", "<Cmd>Gitsigns toggle_current_line_blame<CR>", opts)


-- buffer
map("n", "<leader>bd", ":bdelete<CR>", opts)
