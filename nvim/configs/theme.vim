" theme
syntax on
set termguicolors
set background=dark

" gruvbox
"let g:gruvbox_contrast_dark='hard'

" bg opacity
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

" neosolarized
let g:neosolarized_contrast = "high"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0
let g:neosolarized_termBoldAsBright = 1


" fix tmux neosolarized
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

colorscheme NeoSolarized
