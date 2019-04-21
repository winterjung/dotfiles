# Git
brew install git
brew install gpg
brew install diff-so-fancy
brew install git-flow-avh
brew install pinentry-mac

mkdir ~/.gnupg
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
if [ -f ~/.gitignore ]; then
  rm ~/.gitignore
fi
cp .gitignore ~

if [ -f ~/.gitconfig ]; then
  rm ~/.gitconfig
fi
cp gitconfig ~