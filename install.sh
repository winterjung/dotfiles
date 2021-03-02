#!/bin/bash

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

source .macos
source brew.sh
source git.sh
source zsh.sh
