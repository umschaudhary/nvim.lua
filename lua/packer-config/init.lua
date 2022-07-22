return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("EdenEast/nightfox.nvim") -- theme
	use("kyazdani42/nvim-web-devicons") -- optional, for file icon
	use("kyazdani42/nvim-tree.lua") --explorer

	use("nvim-lualine/lualine.nvim") --lualine
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --treesitter
	use("nvim-treesitter/nvim-treesitter-refactor") --extra features on top of treesitter eg: smart rename
	use("windwp/nvim-ts-autotag") --required by autopairs
	use("windwp/nvim-autopairs") -- autopair plugin
	-- use("preservim/nerdcommenter") -- commnter plugin
	use("norcalli/nvim-colorizer.lua") -- show colors on live based on color codes
	use("Darazaki/indent-o-matic")
	use("ggandor/lightspeed.nvim") -- search tool
	use({
		"lewis6991/gitsigns.nvim", -- tag = 'release' -- To use the latest release
	})
	use("seblj/nvim-tabline") --tabs
	use("jose-elias-alvarez/null-ls.nvim") --plugin for formatting

	use("lukas-reineke/indent-blankline.nvim") -- block lines
	use({ "akinsho/toggleterm.nvim", tag = "v1.*" }) -- toggle term

	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } }) --project wise search
	use("ur4ltz/surround.nvim") -- surrounding , parenthesis, brackets, quotes etc
	use("stevearc/aerial.nvim") -- code outline plugin, handy in large files

	-- LSP
	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-buffer") --cmp buffer source
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("onsails/lspkind.nvim") -- icons on completion
	--use("mhinz/vim-startify")
	use("mattn/emmet-vim") --emmet html and css
	use("tpope/vim-fugitive") --git integration
	use("lewis6991/impatient.nvim")
	use("numToStr/Comment.nvim")

end)
