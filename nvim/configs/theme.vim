" theme
syntax on
set termguicolors
set background=dark

" gruvbox
"let g:gruvbox_contrast_dark='hard'

" bg opacity
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

" neosolarized
runtime ./colors/NeoSolarized.vim

colorscheme NeoSolarized
