vim.g.mapleader = ','

vim.api.nvim_set_keymap('n', '<Leader><cr>', ':noh<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<cr>', {noremap = true, silent = true})
