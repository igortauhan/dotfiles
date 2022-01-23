let mapleader=","

" open vertical tab
nnoremap <leader>\ :vs<cr>

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
nnoremap <silent> <leader>gd :Lspsaga preview_defination<CR>
" lspsaga diagnostics
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
" lspsaga float terminal
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>
