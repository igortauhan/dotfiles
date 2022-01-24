" my configs
set number
set relativenumber
set mouse=a
set clipboard+=unnamed
set title
set shell=/usr/bin/zsh
set showcmd
set lazyredraw
set nowrap
set background=dark
syntax enable
syntax on
set termguicolors

" import
runtime ./plug.vim
runtime ./mappings.vim

luafile $HOME/.config/nvim/plugin/_treesitter.lua
luafile $HOME/.config/nvim/plugin/_lspconfig.lua
luafile $HOME/.config/nvim/plugin/_lspsaga.lua
luafile $HOME/.config/nvim/plugin/_nvimcmp.lua
luafile $HOME/.config/nvim/plugin/_lualine.lua
luafile $HOME/.config/nvim/plugin/_material.lua
luafile $HOME/.config/nvim/plugin/_nvimtree.lua

let g:material_style = 'darker'
colorscheme material
