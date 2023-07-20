require("lazy").setup({
  'github/copilot.vim',
  'tpope/vim-fugitive',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      { 'j-hui/fidget.nvim',       opts = {} },

      { 'folke/neodev.nvim',       opts = {} },
    }
  },
  { 'folke/which-key.nvim',    opts = {} },
  { 'lewis6991/gitsigns.nvim', opts = {} },
  {
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd('colorscheme onedark')
    end
  },
  { 'nvim-lualine/lualine.nvim',           opts = {} },
  { 'lukas-reineke/indent-blankline.nvim', opts = {} },
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate'
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    build = 'cd app && yarn install'
  },
  require 'plugins.debug',
  require 'plugins.autoformat',
  require 'plugins.filetree',
}, opts)
