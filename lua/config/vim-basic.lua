--------------------------------------------------------------------
-- VIM-GENERAL/BASIC
--------------------------------------------------------------------
local general = {
	-- termguicolors = true,
	-- showtabline = 2,
      --mouse = "a",
	showmode = false,
	hlsearch = true,
	incsearch = true,
	ignorecase = true,
	smartcase = false,
	cursorline = true,
	number = true,
	relativenumber = false,
	numberwidth = 4,
	shiftwidth = 2,
	wrap = false,
	encoding = utf8,
}
for k,v in pairs(general) do
	vim.opt[k] = v
end


vim.cmd ("set nocompatible")
vim.cmd ("syntax on")

-- Pop-up-windows:
vim.cmd [[highlight PopupColor1 ctermbg=lightblue guibg=lightblue]]

-- Cursor Line
vim.cmd ("hi CursorLine cterm=NONE ctermbg=240")
vim.cmd ("hi CursorLineNr term=BOLD cterm=NONE ctermbg=NONE ctermfg=202")
vim.cmd ("hi ColorColumn ctermbg=238")
vim.cmd ("hi clear SignColumn")
--vim.cmd ("hi Cursor ctermfg=202 ctermbg=240")
vim.cmd ("hi vCursor ctermbg=NONE ctermfg=236")
-- vim.cmd([[highlight link ToggleTermBorder TelescopeBorder]])
--vim.cmd("autocmd ColorScheme * highlight! link FloatBorder Normal")

-- Fortran Autocmd
vim.cmd ("let fortran_have_tabs=1")
vim.cmd ("let fortran_free_source=1")
vim.cmd ("autocmd Filetype fortran set smartindent")
vim.cmd ("autocmd Filetype fortran set shiftwidth=2")
vim.cmd ("autocmd Filetype fortran set tabstop=7")
vim.cmd ("autocmd Filetype fortran set softtabstop=-1")
vim.cmd ("autocmd Filetype fortran set nosmarttab")
vim.cmd ("autocmd Filetype fortran set expandtab")
vim.cmd ("autocmd Filetype fortran set cc=73")

-- -- vim.api.nvim_set_hl(0, "TelescopeBorder", {ctermbg=220})
-- vim.api.nvim_set_hl(0, "FloatBorder", {bg="#3B4252", fg="#5E81AC"}) 
-- vim.api.nvim_set_hl(0, "NormalFloat", {bg="#3B4252"})
-- --vim.api.nvim_set_hl(0, "TelescopeNormal", {ctermbg=200})
-- vim.api.nvim_set_hl(0, "TelescopeBorder", {ctermbg=240})
-- vim.api.nvim_set_hl(0, "ToggleTermNormal", {ctermbg=240})

--vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
--vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

vim.cmd ("hi FloatBorder guifg=#FAFCF9")

--local border = {
--      {"🭽", "FloatBorder"},
--      {"▔", "FloatBorder"},
--      {"🭾", "FloatBorder"},
--      {"▕", "FloatBorder"},
--      {"🭿", "FloatBorder"},
--      {"▁", "FloatBorder"},
--      {"🭼", "FloatBorder"},
--      {"▏", "FloatBorder"},
--}


vim.cmd("let g:vimwiki_list = [{'path': '~/OneDriver/Wiki','syntax':'markdown', 'ext': '.md'}]")
















