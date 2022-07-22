local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ","

map("n", "<leader>v", ":NvimTreeFindFileToggle<CR>", opts)

-- barbar mappings
-- Move to previous/next
map("n", "gt", "<Cmd>tabNext<CR>", opts)
map("n", "gT", "<Cmd>tabprevious<CR>", opts)

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

-- buffer
map("n", "<leader>bd", ":bdelete<CR>", opts)

-- vim git fugitive
map("n", "<leader>ga", ":Git add %<CR>", opts)
map("n", "<leader>gA", ":Git add .<CR>", opts)
map("n", "<leader>gr", ":Git restore --staged %<CR>", opts)
map("n", "<leader>gR", ":Git restore --staged %<CR>", opts)
map("n", "<leader>gc", ":Git commit <CR>", opts)
map("n", "<leader>gs", ":G <CR>", opts)
map("n", "<leader>gp", ":Git push <CR>", opts)
map("n", "<leader>gb", ":Git blame<CR>", opts)
map("n", "<leader>gl", ":Git log<CR>", opts)
