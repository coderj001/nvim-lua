require 'nvim-treesitter.configs'.setup{
    ensure_installed = {"cpp", "python", "javascript", "html", "json", "tsx", "vue", "typescript", "bash", "lua"},
    highlight = {
        enable = true,
        disable = {'cpp'}
    },
    indent = {
        enable = true,
    }
}
