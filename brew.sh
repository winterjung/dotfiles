#! /bin/bash
brew update

brew tap homebrew/services
brew tap homebrew/cask
brew tap homebrew/cask-fonts

brew install --cask iterm2 visual-studio-code font-fira-code dozer aerial openinterminal-lite

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
CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv install 3.7.4

# Go
brew install go
brew install gomplate

# Node
brew install nvm

# DevOps
brew cask install vagrant
brew install ansible
brew install packer
brew install terraform
brew install kubernetes-helm

