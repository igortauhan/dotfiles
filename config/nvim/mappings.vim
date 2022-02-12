let mapleader=","

" open vertical tab
nnoremap <leader>= :vs<cr>

" enable syntax
nnoremap <leader>so :syntax enable<cr>

" lspsaga find finder
nnoremap <silent> <leader>gh :Lspsaga lsp_finder<CR>
" lspsaga code action
nnoremap <silent> <leader>ca :Lspsaga code_action<CR>
" lspsaga signature help
nnoremap <silent> <leader>gs :Lspsaga signature_help<CR>
" lspsaga rename
nnoremap <silent> <leader>rr :Lspsaga rename<CR>
" lspsaga defination
nnoremap <silent> <leader>gd :Lspsaga preview_definition<CR>
" lspsaga diagnostics
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
" lspsaga float terminal
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

" telescope find files
nnoremap <silent> <leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep<cr>

" barbar move between tabs
nnoremap <silent> <A-h> :BufferPrevious<CR>
nnoremap <silent> <A-l> :BufferNext<CR>

" nvim tree toggle
nnoremap <silent> <leader>t :NvimTreeToggle<CR>
