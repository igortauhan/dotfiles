if status is-interactive
    # Commands to run in interactive sessions can go here

    # fish settings
    set fish_greeting

    # paths

    export PATH="$PATH:/home/igor/development/flutter/bin"
    export PATH="$PATH:/home/igor/Android/Sdk/emulator"

    # my aliases

    alias ll='exa -l -g -a --icons'
   
    ### TMUX
    # new session tmux
    alias tns='tmux -2 new -s'
    # list sessions tmux
    alias tls='tmux ls'
    # attatch session tmux
    alias tas='tmux a -t'
    # kill session tmx
    alias tks='tmux kill-session -t'

    ### NEOVIM
    alias vim='nvim'
end

# runs

source ~/.asdf/asdf.fish

function cd
    builtin cd $argv
    ll
end
