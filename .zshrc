# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Save history & share across terminals
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.cache/zsh/history"
setopt SHARE_HISTORY

# custom shell tools
export HOMEBREW_PREFIX=$(brew --prefix)
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/Users/acaron/.bun/_bun" ] && source "/Users/acaron/.bun/_bun"

# fnm
# export PATH="/Users/acaron/Library/Application Support/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)"

source ~/dotfiles/zsh/aliases.sh
source ~/dotfiles/zsh/functions.sh

# Set local environment variables
PRIVATE="$HOME/dotfiles/zsh/private.sh"
[ -f "$PRIVATE" ] && source "$PRIVATE"