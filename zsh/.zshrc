# Set local environment variables
LOCAL_ENV="$HOME/.config/.env.sh"
[ -f "$LOCAL_ENV" ] && source "$LOCAL_ENV"

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
