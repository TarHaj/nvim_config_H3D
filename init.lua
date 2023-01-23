---------------------------------------------- NVIM PLUGIN LIST ---------------------------------------------- 
--
--
--

require('plugins')
require('config.keymapping')	-- Personal Keymapping
require('config.nvim-tree')	-- Tree Toggle 				(F2)
require('config.autopairs')	-- Parenthesis Paring 
require('config.lastplace')	-- Open file at last location
require('config.toggleterm')	-- Open Terminal 			(F1)
require('config.telescope')	-- Open Telescope 			(F3)
require('config.comment')	-- Comment paragraph			(gc=paragraph, gcc=line)
require('config.lualine')	-- Status Line
--require('lsp.init')		-- LSP (Language Server Protocol) 
require('config.cmp')		-- Auto-complete engine
require('config.luasnip')	-- Snippet engine
require('config.vim-basic')	-- Window parameter
require('config.neoscroll')	-- Smooth Scroll
require('config.vimwiki')	-- Vim Note/Wiki
require('config.whichkey')	-- Show the keys

