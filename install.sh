#!/bin/bash

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

source brew.sh
source .zshrc
source .macos
