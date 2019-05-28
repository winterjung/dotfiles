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
brew cask install aerial
brew cask install font-fira-code
brew cask install dozer
brew cask install pock

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
brew install hexyl
brew install supervisor
brew install ngrok

# Just for fun
brew install lolcat

# Python
brew install pyenv
brew install pipenv
brew install zlib
CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv install 3.7.3

# DevOps
brew cask install vagrant
brew install ansible
brew install packer
brew install terraform

