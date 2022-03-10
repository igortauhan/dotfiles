vim.g.mapleader = ','

-- native lsp formatting
vim.api.nvim_set_keymap('n', '<Leader>asdf', [[<cmd>lua vim.lsp.buf.formatting_sync()<cr>]], { noremap = true, silent = true})

-- open vertical tab
vim.api.nvim_set_keymap('n', '<Leader>=', ':vs<cr>', { noremap = true, silent = true})

-- enable syntax
vim.api.nvim_set_keymap('n', '<Leader>so', ':syntax enable<cr>', { noremap = true, silent = true})

-- lspsaga find finder
vim.api.nvim_set_keymap('n', '<Leader>gh', ':Lspsaga lsp_finder<cr>', { noremap = true, silent = true})
-- lspsaga code action
vim.api.nvim_set_keymap('n', '<Leader>ca', ':Lspsaga code_action<cr>', { noremap = true, silent = true})
-- lspsaga signature help
vim.api.nvim_set_keymap('n', '<Leader>gs', ':Lspsaga signature_help<cr>', { noremap = true, silent = true})
-- lspsaga rename
vim.api.nvim_set_keymap('n', '<Leader>rr', ':Lspsaga rename<cr>', { noremap = true, silent = true})
-- lspsaga defination
vim.api.nvim_set_keymap('n', '<Leader>gd', ':Lspsaga preview_definition<cr>', { noremap = true, silent = true})
-- lspsaga diagnostics
vim.api.nvim_set_keymap('n', '<Leader>cd', ':Lspsaga show_line_diagnostics<cr>', { noremap = true, silent = true})

-- telescope find files
vim.api.nvim_set_keymap('n', '<Leader>ff', [[<cmd>Telescope find_files<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', [[<cmd>Telescope live_grep<cr>]], { noremap = true, silent = true})

-- barbar move between tabs
vim.api.nvim_set_keymap('n', '<A-h>', ':BufferPrevious<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-l>', ':BufferNext<cr>', { noremap = true, silent = true})

-- nvim tree toggle
vim.api.nvim_set_keymap('n', '<Leader>t', ':NvimTreeToggle<cr>', { noremap = true, silent = true})
