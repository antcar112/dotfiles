# Set local environment variables
LOCAL_ENV="$HOME/.config/.env.sh"
if [[ -f "$LOCAL_ENV" ]]; then
  source "$LOCAL_ENV"
fi

# Export NVM
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" 

# Path to oh-my-zsh installation
export ZSH="/Users/anthonycaron/.oh-my-zsh"

# oh-my-zsh theme
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# oh-my-zsh plugins
plugins=(
  brew
  git
  node
  npm
  nvm
  osx
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# oh-my-zsh config
source $ZSH/oh-my-zsh.sh
alias cfomz='code $ZSH/oh-my-zsh.sh'

# Save history & share across terminals
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

source ~/dotfiles/zsh/alias.zsh

# Load OS specific aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
  # iOS
  source ~/dotfiles/zsh/alias-ios.zsh
fi
