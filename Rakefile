# runs a shell command
def run(command)
    `#{command}`
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
  run %{
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  }

  puts "installing zinit"
  run %{
    sh -c "$(curl -fsSL https://git.io/zinit-install)"
  }

  puts "changing the default shell for zsh"
  run %{
    chsh -s /usr/bin/zsh
  }

  puts "======================================================\n"
end

def create_symbolic_link
  puts "======================================================"
  puts "creating symbolic links\n"

  puts "gitconfig"
  run %{
    cp -f ~/projects/dotfiles/extras/.gitconfig ~
  }

  puts "zshrc"
  run %{
    ln -sf ~/projects/dotfiles/zsh/.zshrc ~
  }
 
  puts "ideavimrc"
  run %{
    ln -sf ~/projects/dotfiles/extras/.ideavimrc ~
  }
 
  puts "tmuxconf"
  run %{
    ln -sf ~/projects/dotfiles/extras/.tmux.conf ~
  }

  puts "======================================================\n"
end

task :install do
    install_dependencies

    install_zsh_config

    create_symbolic_link
end
