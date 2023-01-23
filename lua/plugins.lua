-------------------------------------  PACKER MANAGER ------------------------------------
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'			-- Plugin Manager	
	use 'windwp/nvim-autopairs'			-- Parenthesis Pairing
	use 'ethanholz/nvim-lastplace'			-- Open file at last position
	use 'akinsho/nvim-toggleterm.lua'		-- Terminal (F1)
	use 'terrortylor/nvim-comment'			-- Comment Paragraph
	use 'karb94/neoscroll.nvim'			-- Smooth Scroll
	use 'lukas-reineke/indent-blankline.nvim'	-- Indent line color
	use 'vimwiki/vimwiki'				-- Vim Note/Wiki
	use 'folke/which-key.nvim'			-- Key Menu (VIM)

	use {'kyazdani42/nvim-tree.lua',	-- Ntree (F2)
              	requires = 'kyazdani42/nvim-web-devicons',
    	}
	use {'hoob3rt/lualine.nvim',		-- Status-Line
        	requires = {
            			'kyazdani42/nvim-web-devicons',
        			opt = true
        	}
    	}

	------------- Telescope Finder (F3) -------------
	use {'nvim-telescope/telescope.nvim',
        	requires = {
        			'nvim-lua/popup.nvim',
            			'nvim-lua/plenary.nvim'
        	}
	}
	use {'nvim-telescope/telescope-fzf-native.nvim',
        	run = 'make'
	}

	----------------- Auto-Complete -----------------
	use({ "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" }) -- buffer completions
	use({ "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })
	use({ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" })

	use({ "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" }) -- enable LSP
        use({ "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" }) -- simple to use language server installer
        use({ "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" }) -- for formatters and linters

	use 'L3MON4D3/LuaSnip' 		-- Lua snippet Engine
	use({ "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" }) -- a bunch of snippets to use


end)

