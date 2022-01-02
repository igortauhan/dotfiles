let mapleader=","
" ,t open nvimtree
nnoremap <leader>t :NvimTreeToggle<cr>

nnoremap <leader>\ :vs<cr>

" ,ce enable coc
nnoremap <leader>ce :CocEnable<cr>

" ,so enable syntax
nnoremap <leader>so :syntax on<cr>

" ,ff calls telescope
nnoremap <leader>ff :Telescope find_files<cr>
" ,fr telescope live grep
nnoremap <leader>fr <cmd>Telescope live_grep<cr>
" ,install 
nnoremap <leader>install :PlugInstall<cr>
" ,clo :CocList outline
nnoremap <leader>clo :CocList outline<cr>
" ,clo :CocList diagnostic
nnoremap <leader>cld :CocList diagnostics<cr>
" ,pp format code
nnoremap <leader>asdf :Prettier<cr>

