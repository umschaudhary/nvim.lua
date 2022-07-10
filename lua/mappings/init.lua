local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ","

map("n", "<leader>v", ":NvimTreeFindFileToggle<CR>", opts)

-- barbar mappings
-- Move to previous/next
map("n", "gb", "<Cmd>BufferPrevious<CR>", opts)
map("n", "gt", "<Cmd>BufferNext<CR>", opts)

-- Goto buffer in position...
map("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<leader>b6", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<leader>b7", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<leader>b8", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<leader>b9", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "bpn", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "bc", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
-- Close commands
-- Magic buffer-picking mode
map("n", "bt", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- telescoe mappings

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

--navigation
map("i", "<C-h>", "<Left>", {})
map("i", "<C-k>", "<UP>", {})
map("i", "<C-l>", "<Right>", {})

-- line up or down
map("n", "<leader>s", ":m+<CR>", opts)
map("n", "<leader>w", ":m-2<CR>", opts)

map("n", "<leader><space>", ":noh<cr>:call clearmatches()<cr>", opts)
map("n", "<leader>r", ":luafile %<CR>", opts)
