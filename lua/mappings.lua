vim.g.mapleader = ','

-- NORMAL MODE
vim.api.nvim_set_keymap('n', '<Leader><cr>', ':noh<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>w', ':w!<cr>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', {silent = true})

-- INSERT MODE
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap = true})
vim.api.nvim_set_keymap('i', 'kj', '<esc>', {noremap = true})

vim.api.nvim_set_keymap('i', '<esc>', '<nop>', {noremap = true})
vim.api.nvim_set_keymap('i', '<bs>', '<nop>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})


-- VISUAL MODE
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})
