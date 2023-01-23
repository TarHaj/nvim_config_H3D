local ls = require("luasnip")
local types = require("luasnip.util.types")

require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/lua/snippets"})

ls.config.set_config{
	history = true,	-- Jump back into it when outside the selection
	updateevents = "TextChanged,TextChangedI", --update changes as you type
	enable_autosnippets = true,
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_test = {{"<-", "Error"}},
			},
		},
	},
}


-- Key Mapping --
-- vim.keymap.set({ "i", "s" }, "<c-s>", "<Esc>:w<cr>")
-- vim.keymap.set({ "i", "s" }, "<c-u>", '<cmd>lua require("luasnip.extras.select_choice")()<cr><C-c><C-c>')

vim.keymap.set({ "i", "s" }, "<C-k>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<a-l>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	end
-- end)

vim.keymap.set("n", "<Leader><CR>", "<cmd>LuaSnipEdit<cr>", { silent = true, noremap = true })
vim.cmd([[autocmd BufEnter */snippets/*.lua nnoremap <silent> <buffer> <CR> /-- End Refactoring --<CR>O<Esc>O]])

-- vim.keymap.set({ "i", "s" }, "<A-y>", "<Esc>o", { silent = true })

-- vim.keymap.set({ "i", "s" }, "<a-k>", function()
-- 	if ls.jumpable(1) then
-- 		ls.jump(1)
-- 	end
-- end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<a-h>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(-1)
-- 	end
-- end) --}}}

-- -- More Settings --

