local actions = require('telescope.actions') 
  
require('telescope').setup({ 
        defaults = { 
                file_sorter = require('telescope.sorters').get_fzy_sorter, 
                prompt_prefix = '  ', 
                color_devicons = true, 
 
                file_previewer = require('telescope.previewers').vim_buffer_cat.new, 
                grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new, 
                qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new, 
 
                mappings = { 
                        i = { 
                                ['<C-x>'] = false, 
                                ['<C-q>'] = actions.send_to_qflist, 
                        }, 
                }, 
        }, 
	highlights = {
		vim.api.nvim_set_hl(0, "FloatBorder", {bg="#3B4252", fg="#5E81AC"}),
		vim.api.nvim_set_hl(0, "NormalFloat", {bg="#3B4252"}),
		vim.api.nvim_set_hl(0, "TelescopeNormal", {bg="#3B4252"}),
		vim.api.nvim_set_hl(0, "TelescopeBorder", {bg="#3B4252"}),
	},
        -- extensions = { 
        --      fzy = { 
        --             fuzzy = true, 
        --              override_generic_sorter = false, 
        --              override_file_sorter = true, 
        --             case_mode = 'smart_case', 
        --      }, 
        -- }, 
}) 

-- for k, v in pairs(highlights) do
--   vim.api.nvim_set_hl(0, k, v)
-- end
-- require('telescope').load_extension('fzf')
