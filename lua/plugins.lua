return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
   -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}
end)
