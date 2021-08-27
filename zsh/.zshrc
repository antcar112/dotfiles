# Load OS specific files
if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/dotfiles/zsh/ios.sh
elif [[ "$OSTYPE" == "linux"* ]]; then
  source ~/dotfiles/zsh/linux.sh
fi

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

source ~/dotfiles/zsh/aliases.sh
source ~/dotfiles/zsh/config.sh
source ~/dotfiles/zsh/functions.sh

[ -f "$HOME/dotfiles/config/lf/lfcd.sh" ] && source "$HOME/dotfiles/config/lf/lfcd.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set local environment variables
LOCAL_ENV="$HOME/.config/.env.sh"
[ -f "$LOCAL_ENV" ] && source "$LOCAL_ENV"

# Set local environment variables
PRIVATE="$HOME/dotfiles/zsh/private.sh"
[ -f "$PRIVATE" ] && source "$PRIVATE"