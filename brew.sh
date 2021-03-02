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
brew install httpie
brew install jq
brew install tldr
brew install ncdu
brew install hexyl
brew install asdf
brew install bat

# TODO
# (languages) Go, Python, Node, (ops) Terraform, Kubernetes
brew install kubectl
