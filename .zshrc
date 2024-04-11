# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
echo "Hello from .zshrc"
# Save history & share across terminals
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.cache/zsh/history"
setopt SHARE_HISTORY

# TODO, try this stuff out
# https://github.com/ThePrimeagen/.dotfiles/blob/master/uwuntu/.config/personal/env
# https://github.com/ThePrimeagen/.dotfiles/blob/master/zsh/.zsh_profile

# export PATH="$HOME/.local/scripts:$PATH"

# # Where should I put you?
# bindkey -s ^f "tmux-sessionizer\n"

# custom shell tools
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# If you receive "highlighters directory not found" error message,
# you may need to add the following to your .zshenv:
  # export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/Users/acaron/.bun/_bun" ] && source "/Users/acaron/.bun/_bun"

# fnm
# export PATH="/Users/acaron/Library/Application Support/fnm:$PATH"
# eval "`fnm env`"
eval "$(fnm env --use-on-cd)"

# source ~/dotfiles/zsh/aliases.sh
source ~/dotfiles/zsh/functions.sh

# Set local environment variables
PRIVATE="$HOME/dotfiles/zsh/private.sh"
[ -f "$PRIVATE" ] && source "$PRIVATE"
