-- include toggleterm
require('toggleterm').setup{
	size = 100,
  	open_mapping = '<F1>',
	hide_numbers = true,
  	shade_filetypes = {},
	shade_terminals = true,
 	shading_factor = 1,
	start_in_insert = true,
  	insert_mappings = true,
	persist_size = true,
  	direction = 'float',
	close_on_exit = true,
  	shell = vim.o.shell, -- change the default shell}
	float_opts = {
		border = "single",
		winblend = 0,
		-- ctermfg = "129",
		-- ctermbg = "129",
		highlights = {
			border = "rounded",
			background = "Normal",
		},
 	},
}

--vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal
local htop = Terminal:new({ cmd = "htop", hidden = true })
local vimwiki = Terminal:new({ cmd = "vim ~/OneDriver/Wiki/index.md", hidden = true })
local vimairbods = Terminal:new({ cmd = "vim ~/OneDriver/Wiki/AIRBODS.md", hidden = true })

function _HTOP_TOGGLE()
	htop:toggle()
end

function _VIMWIKI_TOGGLE()
	vimwiki:toggle()
end

function _VIMAIRBODS_TOGGLE()
	vimairbods:toggle()
end

--vim.api.nvim_win_set_config(0, { border = "rounded" })
