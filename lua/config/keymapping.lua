keymap = vim.keymap.set
keymap('n','<C-Up>', '<C-W><C-K>')
keymap('n','<C-Down>', '<C-W><C-J>')
keymap('n','<C-Right>', '<C-W><C-L>')
keymap('n','<C-Left>', '<C-W><C-H>')


keymap('n', '<SPACE>', '<Nop>')
vim.g.mapleader = " "
keymap('n', '<F1>', '<cmd> ToggleTerm <cr>')
keymap('n', '<F2>', '<cmd> NvimTreeToggle <cr>')
keymap('n', '<F3>', '<cmd> Telescope find_files <cr>')

