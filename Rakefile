def welcome
  puts
  puts %q{
     _                    _                   _       _    __ _ _           
    | |                  | |                 | |     | |  / _(_) |          
    | |_ __ _  __ _ _   _| |__  ___ ____   __| | ___ | |_| |_ _| | ___  ___ 
    | __/ _` |/ _` | | | | '_ \/ __|_  /  / _` |/ _ \| __|  _| | |/ _ \/ __|
    | || (_| | (_| | |_| | | | \__ \/ /  | (_| | (_) | |_| | | | |  __/\__ \
     \__\__,_|\__,_|\__,_|_| |_|___/___|  \__,_|\___/ \__|_| |_|_|\___||___/
  }
  puts
end

# runs a shell command
def run(command)
  `#{command}`
end

# return true if the directory or file exists
def directory_exists?(dir)
  File.exist?(dir)
end

def ask(config)
  puts "You want to install #{config}? (y/n)"
  puts
  return true if $stdin.gets.chomp == 'y'
end

def install_file(path)
  if directory_exists?(ENV['HOME'] + "/#{path}")
    puts "#{path} file exists, renamed to #{path}.backup.old"
    # backup
    run %{
      mv ~/#{path} ~/#{path}.backup.old
    }
  end
  run %{
    cp -f #{__dir__}/config/#{path} ~
  }
end

def install_zsh_config
  puts
  puts '======================================================'
  puts 'installing zsh configs'
  puts

  puts 'installing ohmyzsh'
  unless directory_exists?(ENV['HOME'] + '/.oh-my-zsh')
    run %{
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    }
  else
    puts 'oh-my-zsh already installed!'
    puts
  end

  puts 'installing zinit'
  unless directory_exists?(ENV['HOME'] + '/.local/share/zinit')
    run %{
      sh -c "$(curl -fsSL https://git.io/zinit-install)"
    }
  else
    puts 'zinit already installed!'
    puts
  end

  puts 'changing the default shell to zsh'
  puts
  if directory_exists?('/usr/bin/zsh')
    run %{
      chsh -s /usr/bin/zsh
    }
  else
    puts 'zsh not installed!'
    puts
  end

  puts '======================================================'
  puts
end

def install_config_files
  puts '======================================================'
  puts 'Installing config files'
  puts

  puts 'gitconfig'
  puts
  install_file('.gitconfig') if ask('gitconfig')

  puts 'zshrc'
  puts
  install_file('.zshrc') if ask('zshrc')

  puts 'ideavimrc'
  puts
  install_file('.ideavimrc') if ask('ideavimrc')

  if (ask'tmuxconf')
    install_file('.tmux.conf')
    run %{
      git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    }
  end
  puts '======================================================'
end

def install_neovim
  puts
  puts '======================================================'

  if directory_exists?(ENV['HOME'] + '/.config/nvim')
    puts 'neovim config folder already exist, renamed to neovim_backup_old'
    puts
    run %{
      mv ~/.config/nvim ~/.config/neovim_backup_old
    }
  end
  run %{
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  }
  run %{
    cp -r #{__dir__}/config/nvim ~/.config
  }
  run %{
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  }

  puts '======================================================'
  puts
end

def install_alacritty
  puts
  puts '======================================================'

  if directory_exists?(ENV['HOME'] + '/.config/alacritty')
    puts 'alacritty config folder already exist, renamed to alacritty_backup_old'
    run %{
      mv ~/.config/alacritty ~/.config/alacritty_backup_old
    }
  end
  run %{
    cp -r #{__dir__}/config/alacritty ~/.config
  }
  puts '======================================================'

  puts
end

def done_neovim
  puts 'After restart your terminal, open neovim and run :PlugInstall to install the plugins'
  puts
  puts 'If you want to install lsp servers for neovim, run the script inside the dotfiles/utils folder.'
  puts
  puts 'Contains: Ruby, Python, HTML, CSS, JS/TS, JSON'
  puts
end

def done
  puts
  puts '======================================================'
  puts 'Done. Please, restart your terminal.'
  puts '======================================================'
  puts
end

task :install do
  welcome

  install_zsh_config if ask('ohmyzsh and zinit')

  install_config_files if ask('my config files')

  if ask('neovim')
    install_neovim
    done_neovim
  end

  install_alacritty if ask('alacritty terminal')

  done
end
