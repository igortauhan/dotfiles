" call the plugin file
source $HOME/.config/nvim/plugins/plugins.vim

""" configs with vim files
" source cocvim config
source $HOME/.config/nvim/coc/coc.vim
" source mappings
source $HOME/.config/nvim/configs/mappings.vim
" source coc mappings
source $HOME/.config/nvim/configs/cocmap.vim
" source my configs
source $HOME/.config/nvim/configs/configs.vim
" source theme
source $HOME/.config/nvim/configs/theme.vim
" source prettier
source $HOME/.config/nvim/plugins/pluginsconfig/prettier.vim

""" configs with luafiles
" color highlight
lua require('colorizer').setup()
" treesitter
luafile $HOME/.config/nvim/lua/treesitter.lua
" nvim-treelua
luafile $HOME/.config/nvim/lua/nvimtree.lua
" autopairs
luafile $HOME/.config/nvim/lua/autopairs.lua
