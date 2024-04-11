echo "Hello from .zprofile"

export CONFIG_HOME="$HOME/.config"
export CACHE_HOME="$HOME/.cache" 
VIM="vim"

PERSONAL=$CONFIG_HOME/personal
for i in `find -L $PERSONAL`; do
    source $i
done

export HOMEBREW_PREFIX=$(brew --prefix)
export DOTFILES=$HOME/dotfiles


addToPathFront $HOME/.local/scripts

# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"