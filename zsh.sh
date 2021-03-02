# Zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
cp .zshrc ~

# Activate fzf
source /usr/local/opt/fzf/install

# Oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

source .zshrc

