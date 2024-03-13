export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Path to oh-my-zsh installation
export ZSH="/Users/acaron/.oh-my-zsh"

# oh-my-zsh theme
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

# oh-my-zsh plugins
plugins=(
  fnm
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# oh-my-zsh config
source $ZSH/oh-my-zsh.sh

source ~/dotfiles/zsh/aliases.sh
source ~/dotfiles/zsh/config.sh
source ~/dotfiles/zsh/functions.sh

# [ -f "$HOME/dotfiles/config/lf/lfcd.sh" ] && source "$HOME/dotfiles/config/lf/lfcd.sh"

# Set local environment variables
PRIVATE="$HOME/dotfiles/zsh/private.sh"
[ -f "$PRIVATE" ] && source "$PRIVATE"

# bun completions
[ -s "/Users/acaron/.bun/_bun" ] && source "/Users/acaron/.bun/_bun"

# fnm
# export PATH="/Users/acaron/Library/Application Support/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)"