vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'	

	--telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-file-browser.nvim' }}
	}

	--treesitter
	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use("nvim-treesitter/playground")
	use("nvim-treesitter/nvim-treesitter-context");


	--undotree
	use("mbbill/undotree")
	--HARPOON!!
	use("theprimeagen/harpoon")

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
	--====================================================================
	--NEED to integrate these
	--==================================================================
--[[

	use('gruvbox-community/gruvbox')

	--autobrackets, curlybraces, quatation marks,etc
	use('windwp/nvim-autopairs')

	--snippet manager
	use('hrsh7th/vim-vsnip')
	use('hrsh7th/vim-vsnip-integ')
	--actual snippet
	use('rafamadriz/friendly-snippets')
	use('J0rgeSerran0/vscode-csharp-snippets')


	--indentation marker
	use('lukas-reineke/indent-blankline.nvim')

	--status line
	use('hoob3rt/lualine.nvim')
	--If you want to have icons in your statusline choose one of these
	use('kyazdani42/nvim-web-devicons')
	use('ryanoasis/vim-devicons')


	--git integration:
	--Git show information in files (author, insertions,)
	use('lewis6991/gitsigns.nvim')


	--todo lists:
	use('vimwiki/vimwiki')
--]]
end)

