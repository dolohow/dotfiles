vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.virtualedit = "all"
vim.o.shell = "bash"
vim.o.wrap = false
vim.o.list = true
vim.o.hlsearch = false
vim.wo.number = true
vim.o.mouse = ''
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
--vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

require('plugins.lazy')
require('plugins.init')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.mason')
