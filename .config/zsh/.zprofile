VIM="nvim"
export EDITOR=$VIM
export VISUAL=$VIM

# Add brew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

export HOMEBREW_PREFIX=$(brew --prefix)

PERSONAL=$XDG_CONFIG_HOME/personal
for i in `find -L $PERSONAL`; do
    source $i
done

addToPathFront $HOME/.local/scripts

