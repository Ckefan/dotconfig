function get_setup(name)
  return string.format('require("plugin/config/%s")', name)
end

require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' -- Package manager
  use "neovim/nvim-lspconfig" -- Collection of configurations for the built-in LSP client
  use 'williamboman/nvim-lsp-installer' -- manage LSP servers with :LspInstall

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use "EdenEast/nightfox.nvim" -- theme
  use 'windwp/nvim-autopairs'
  use 'kristijanhusak/defx-git'
  use 'hoob3rt/lualine.nvim'
  use 'kristijanhusak/defx-icons'
  use { 
    'Shougo/defx.nvim',
    run = ':UpdateRemotePlugins',
    config = get_setup("defx")
  }
  use 'folke/lsp-colors.nvim'
  -- use {
  --   'kyazdani42/nvim-tree.lua',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons',
  --   },
  --   config = get_setup("nvim-tree"),
  -- }
end
)
