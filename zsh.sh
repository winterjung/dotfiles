# Zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
cp .zshrc ~

if [ -f ~/z.sh ]; then
  rm ~/z.sh
fi
cp z.sh ~

if [ -f ~/.vimrc ]; then
  rm ~/.vimrc
fi
cp .vimrc ~

# Activate fzf
source /usr/local/opt/fzf/install

# Oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

source .zshrc

