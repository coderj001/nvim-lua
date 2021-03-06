local M = {}

function _G.move_or_open()
  if #vim.api.nvim_list_wins() == 1 then
    vim.cmd("vnew | wincmd h | vert resize 30 | wincmd l")
  else
    vim.cmd("wincmd l")
  end
end

function M.setup()
    vim.g.nvim_tree_ignore = { '.git', 'node_modules', 'dist' }
    vim.g.nvim_tree_disable_netrw = 0
    vim.g.nvim_tree_indent_markers = 1
    vim.g.nvim_tree_hijack_netrw = 1
    vim.g.nvim_tree_follow = 1
    vim.g.nvim_tree_tab_open = 1
    vim.g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'}
    vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1
    }

    vim.g.nvim_tree_bindings = {
    ["<C-p>"] = ":call luaeval('move_or_open()') | Files<CR>",
    ["<C-t>"] = ":call luaeval('move_or_open()') | RG<CR>",
    ["<C-b>"] = ":call luaeval('move_or_open()') | Buffers<CR>",
    }

    vim.g.nvim_tree_icons = {
    default = '',
    git= {
      unstaged = "✗",
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★"
    },
    folder = {
      default = "",
      open = ""
    }
    }
    vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<cr>', {noremap = true, silent = true})
end

return M
