export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache" 
VIM="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

PERSONAL=$XDG_CONFIG_HOME/personal
for i in `find -L $PERSONAL`; do
    source $i
done

export HOMEBREW_PREFIX=$(brew --prefix)
export DOTFILES=$HOME/dotfiles


addToPathFront $HOME/.local/scripts

# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"
