#!/bin/bash

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

source .macos
source brew.sh
source git.sh
source zsh.sh
