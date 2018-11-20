#! /bin/bash
brew update
brew upgrade

brew tap homebrew/services
brew tap caskroom/cask
brew tap caskroom/fonts

brew cask install dropbox
brew cask install iterm2
brew cask install visual-studio-code
brew cask install telegram-desktop
brew cask install haptickey

# Basic tools
brew install wget
brew install tree

# Useful tools
brew install exa
brew install fd
brew install the_silver_searcher
brew install fzf
brew install z
brew install htop
brew install httpie
brew install icdiff
brew install jq
brew install tldr
brew install ncdu

# Just for fun
brew install lolcat

# Git
brew install git
brew install gpg
brew install diff-so-fancy
brew install pinentry-mac
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
if [ -f ~/.gitignore ]; then
  rm ~/.gitignore
fi
ln -nfs ~/dotfiles/.gitignore ~/.gitignore

if [ -f ~/.gitconfig ]; then
  rm ~/.gitconfig
fi
ln -nfs ~/dotfiles/.gitconfig ~/.gitconfig

# Zsh & Oh-my-zsh
brew install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
ln -nfs ~/dotfiles/.zshrc ~/.zshrc

# Python
brew install pyenv
brew install pipenv