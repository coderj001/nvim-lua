require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "c", "rust", 'go' },
  },
  indent = {
    enable = true
  }
}