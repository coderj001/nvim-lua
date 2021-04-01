local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use {'kabouzeid/nvim-lspinstall', require='neovim/nvim-lspconfig'}
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use {
    'kyazdani42/nvim-web-devicons', config = function() require 'config/web-devicons' end,
    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
    config = function () require 'config/treesitter' end,
    }
    use { 'nvim-treesitter/playground'}
    use {
    'kyazdani42/nvim-tree.lua', as = 'nvimtree', requires = {'kyazdani42/nvim-web-devicons'},
    config = function () require 'config/nerdtree' end,
    }
    use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require 'statusline' end,
    requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {'rockerBOO/boo-colorscheme-nvim', branch = 'main', as = 'boo', config=function () vim.cmd('colorscheme boo') end}

    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-media-files.nvim'}

end)
