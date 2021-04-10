local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

    -- Lsp
    use {'neovim/nvim-lspconfig'}
    use {'kabouzeid/nvim-lspinstall', require='neovim/nvim-lspconfig'}
    use {'glepnir/lspsaga.nvim'}
    use {'onsails/lspkind-nvim'}
    use {'kosayoda/nvim-lightbulb'}
    use {'mfussenegger/nvim-jdtls'}

    -- Autocomplete
    use {'hrsh7th/nvim-compe'}
    use {'hrsh7th/vim-vsnip' }

    -- ui
    use {'rockerBOO/boo-colorscheme-nvim', branch = 'main', as = 'boo', config=function () vim.cmd('colorscheme boo') end}
    use {
    'kyazdani42/nvim-web-devicons', config = function() require 'config/web-devicons'.setup() end,
    }
    use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require 'statusline' end,
    requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {
    'romgrk/barbar.nvim', config = function() require 'config/barbar'.setup() end,
    requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
    config = function () require 'config/treesitter'.setup() end,
    }
    use { 'nvim-treesitter/playground'}
    use { 'nvim-treesitter/nvim-treesitter-refactor', requires= {'nvim-treesitter/nvim-treesitter'}}

    -- brower
    use {
    'kyazdani42/nvim-tree.lua', as = 'nvimtree', requires = {'kyazdani42/nvim-web-devicons'},
    config = function () require 'config/nerdtree'.setup() end,
    }

    -- telescope
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-media-files.nvim'}

end)
