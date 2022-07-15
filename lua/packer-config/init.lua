return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("EdenEast/nightfox.nvim") -- Packer
	use("kyazdani42/nvim-web-devicons") -- optional, for file icon
	use("kyazdani42/nvim-tree.lua")

	use("nvim-lualine/lualine.nvim") --lualine
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("windwp/nvim-ts-autotag")
	use("windwp/nvim-autopairs")
	use("preservim/nerdcommenter")
	use("norcalli/nvim-colorizer.lua")
	use("Darazaki/indent-o-matic")
	use("ggandor/lightspeed.nvim")
	use({
		"lewis6991/gitsigns.nvim", -- tag = 'release' -- To use the latest release
	})
	use('seblj/nvim-tabline')
	use ("jose-elias-alvarez/null-ls.nvim")

	use("lukas-reineke/indent-blankline.nvim") -- block lines
	use({ "akinsho/toggleterm.nvim", tag = "v1.*" }) -- toggle term

	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use("ur4ltz/surround.nvim")
	use("stevearc/aerial.nvim")
	-- LSP
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("onsails/lspkind.nvim") -- icons on completion
	use("mhinz/vim-startify")
	use("mattn/emmet-vim")
end)
