# Zsh
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
cp .zshrc ~

# Activate fzf
source /usr/local/opt/fzf/install

# Set default shell to zsh
sudo dscl . -create /Users/$USER UserShell $(which zsh)

# Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Create folders
mkdir ~/.nvm
mkdir ~/go

source .zshrc

