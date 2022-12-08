vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'folke/tokyonight.nvim'
  use 'simrat39/rust-tools.nvim'
  use 'neovim/nvim-lspconfig'
end)
