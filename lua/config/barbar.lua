local M = {}

function M.setup()
    vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-q>', ':BufferClose<CR>', { noremap = true, silent = true })
end

return M
