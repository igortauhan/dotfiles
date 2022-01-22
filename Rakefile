def welcome
  puts %q{
     _                    _                   _       _    __ _ _           
    | |                  | |                 | |     | |  / _(_) |          
    | |_ __ _  __ _ _   _| |__  ___ ____   __| | ___ | |_| |_ _| | ___  ___ 
    | __/ _` |/ _` | | | | '_ \/ __|_  /  / _` |/ _ \| __|  _| | |/ _ \/ __|
    | || (_| | (_| | |_| | | | \__ \/ /  | (_| | (_) | |_| | | | |  __/\__ \
     \__\__,_|\__,_|\__,_|_| |_|___/___|  \__,_|\___/ \__|_| |_|_|\___||___/
  }
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
  return true if STDIN.gets.chomp == "y"
end

def symbolic(path)
  if directory_exists?(ENV['HOME'] + "/#{path}")
    puts "#{path} file exists, renamed to #{path}.backup.old"
    # backup
    run %{
      mv ~/#{path} ~/#{path}.backup.old
    }
  end
  run %{
      ln -sf ~/projects/dotfiles/config/#{path} ~
  }
end

def install_dependencies
  puts "======================================================"
  puts "installing dependencies"
  run %{
    sudo pacman -S base-devel curl lua tmux zsh exa
  }
  puts "======================================================\n"
end

def install_zsh_config
  puts "======================================================"
  puts "installing zsh configs\n"
  
  puts "installing ohmyzsh"
  unless directory_exists?(ENV['HOME'] + "/.oh-my-zsh")
    run %{
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    }
  else
    puts "oh-my-zsh already installed!"
  end

  puts "installing zinit"
  unless directory_exists?(ENV['HOME'] + "/.local/share/zinit")
    run %{
      sh -c "$(curl -fsSL https://git.io/zinit-install)"
    }
  else
    puts "zinit already installed!"
  end

  puts "changing the default shell for zsh"
  if directory_exists?(ENV['HOME'] + "/usr/bin/zsh")
    run %{
      chsh -s /usr/bin/zsh
    }
  else
    puts "zsh not installed!"
  end

  puts "======================================================\n"
end

def create_symbolic_link
  puts "======================================================"
  puts "creating symbolic links\n"

  puts "gitconfig"
  symbolic(".gitconfig")

  puts "zshrc"
  symbolic(".zshrc")
 
  puts "ideavimrc"
  symbolic(".ideavimrc")
 
  puts "tmuxconf"
  symbolic(".tmux.conf")

  puts "======================================================\n"
end

task :install do
  welcome

  install_dependencies

  install_zsh_config if ask("ohmyzsh and zinit")

  create_symbolic_link if ask("my config files")
end
