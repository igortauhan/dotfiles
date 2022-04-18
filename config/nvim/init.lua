require('plugins')
require('mappings')

-- my configs
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamed'
vim.o.title = true
vim.o.shell = '/usr/bin/zsh'
vim.o.showcmd = true
vim.o.lazyredraw = true
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.bo.syntax  = 'enable'
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

vim.cmd 'colorscheme NeoSolarized'
vim.cmd 'hi Normal guibg=NONE ctermbg=NONE'

require('plugin/_autopairs')
require('plugin/_gitsigns')
require('plugin/_lspconfig')
require('plugin/_lspsaga')
require('plugin/_lualine')
require('plugin/_nvimcmp')
require('plugin/_nvimtree')
require('plugin/_treesitter')

