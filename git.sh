# Git
brew install gnupg
brew install pinentry-mac
brew install diff-so-fancy

# GPG
mkdir -p ~/.gnupg
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
chown -R $(whoami) ~/.gnupg/
chmod 600 ~/.gnupg/*
chmod 700 ~/.gnupg

if [ -f ~/.gitignore ]; then
  rm ~/.gitignore
fi
cp .gitignore ~

if [ -f ~/.gitconfig ]; then
  rm ~/.gitconfig
fi
cp .gitconfig ~
