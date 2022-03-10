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
vim.g.material_style = 'palenight'

vim.cmd[[ colorscheme material ]]

