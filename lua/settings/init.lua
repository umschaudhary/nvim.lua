---------------- General Settings ------------------

local set = vim.opt

set.background = "dark"
set.showmatch = true
set.hlsearch = true
set.incsearch = true
set.number = true
set.relativenumber = true
set.splitbelow = true
set.ruler = false
set.laststatus = 2
set.foldmethod = "indent"
set.foldlevel = 99
set.encoding= "UTF-8"

-- TextEdit might fail if hidden is not set.
set.hidden = true
set.backup = false
set.writebackup = false
set.cursorline = false
set.spelllang = "en_us"
set.list = true
set.termguicolors = true

-- wrap lines visually
set.wrap  = false
set.linebreak = true
set.showbreak= "↳"

-- set cmdheight=2
set.updatetime = 1000
-- Don't pass messages to |ins-completion-menu|.

-- diagnostics appear/become resolved.
set.signcolumn = "yes"
set.swapfile = false
set.scrolloff = 5
set.clipboard = "unnamedplus"

set.mouse="a"

set.cinoptions={'g0', 'l1', i0}
set.backspace={"indent", "eol", "start"}

-- set.listchars = {tab = '▸', trail = '▫', nbsp = "_", extends = "»", precedes = "«",  }
-- set.listchars = {eol = ' ', tab = ' ', trail = ' '}
set.shortmess = set.shortmess + "c"

vim.cmd [[
  syntax on
  syntax enable
  filetype off
  filetype plugin on
]]
