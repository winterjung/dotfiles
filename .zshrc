# Set brew path
if command -v brew >/dev/null; then
  BREW_PREFIX="$(brew --prefix)"
fi

# Set oh-my-zsh
export ZSH="/Users/winterj/.oh-my-zsh"
ZSH_THEME="sorin"
plugins=(
  git
  docker
  pyenv
)
source $ZSH/oh-my-zsh.sh
source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load z
if [ -n "$BREW_PREFIX" ]; then
  if [ -f "$BREW_PREFIX/etc/profile.d/z.sh" ]; then
    source "$BREW_PREFIX/etc/profile.d/z.sh"
  fi
fi

# Load fzf
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh

  # fshow - git commit browser
  fshow() {
    git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(green)%cr%C(reset)" "$@" |
    fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --preview "echo {} | grep -o '[a-f0-9]\{7\}' | head -1 |
                 xargs -I % sh -c 'git show --color=always %'" \
      --bind "ctrl-m:execute:
        (grep -o '[a-f0-9]\{7\}' | head -1 |
        xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
        {}
FZF-EOF"
  }
fi

# Unset local functions and variables
unset BREW_PREFIX

# My functions
pman() {
  man -t $* | open -f -a /Applications/Preview.app
}

# Define aliases
alias prp="pipenv run python"
alias l="exa -alh --git --color=automatic"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias docker-rm-exit="docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm"
