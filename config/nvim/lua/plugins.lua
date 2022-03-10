local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
    -- utils
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'tpope/vim-surround'
    Plug 'windwp/nvim-autopairs'
    
    -- git plugins
    Plug 'lewis6991/gitsigns.nvim'
    
    -- themming
    Plug 'marko-cerovac/material.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    
    -- lsp plugins
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'neovim/nvim-lspconfig'
    Plug 'tami5/lspsaga.nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
vim.call('plug#end')

require('plugin/_autopairs')
require('plugin/_gitsigns')
require('plugin/_lspconfig')
require('plugin/_lspsaga')
require('plugin/_lualine')
require('plugin/_material')
require('plugin/_nvimcmp')
require('plugin/_nvimtree')
require('plugin/_treesitter')

