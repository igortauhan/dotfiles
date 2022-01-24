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
  puts '======================================================'
  puts 'installing zsh configs'

  puts 'installing ohmyzsh'
  unless directory_exists?(ENV['HOME'] + '/.oh-my-zsh')
    run %{
      sh -c '$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)' "" --unattended
    }
  else
    puts 'oh-my-zsh already installed!'
  end

  puts 'installing zinit'
  unless directory_exists?(ENV['HOME'] + '/.local/share/zinit')
    run %{
      sh -c "$(curl -fsSL https://git.io/zinit-install)"
    }
  else
    puts 'zinit already installed!'
  end

  puts 'changing the default shell for zsh'
  if directory_exists?('/usr/bin/zsh')
    run %{
      chsh -s /usr/bin/zsh
    }
  else
    puts 'zsh not installed!'
  end

  puts '======================================================'
end

def install_config_files
  puts '======================================================'
  puts 'Installing config files'

  puts 'gitconfig'
  install_file('.gitconfig') if ask('gitconfig')

  puts 'zshrc'
  install_file('.zshrc') if ask('zshrc')

  puts 'ideavimrc'
  install_file('.ideavimrc') if ask('ideavimrc')

  puts 'tmuxconf'
  install_file('.tmux.conf') if ask('tmux.conf')

  puts '======================================================'
end

def install_neovim
  puts '======================================================'
  if directory_exists?(ENV['HOME'] + '/.config/nvim')
    puts 'neovim config folder already exist, renamed to neovim_backup_old'
    run %{
      mv ~/.config/nvim ~/.config/neovim_backup_old
    }
  end
  run %{
    cp -r #{__dir__}/config/nvim ~/.config
  }
  puts '======================================================'
end

def done_neovim
  puts 'After restart your terminal, open neovim and run :PlugInstall to install the plugins'
  puts 'If you want to install lsp servers for neovim, run the script inside the dotfiles/utils folder.'
  puts 'Contains: Ruby, Python, HTML, CSS, JS/TS, JSON'
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

  done
end
