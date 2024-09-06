# Save history & share across terminals
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh/history"
setopt SHARE_HISTORY

# Enable completion
# autoload -Uz compinit; compinit

# +------------+
# | COMPLETION |
# +------------+

source $DOTFILES/.config/zsh/completion.zsh

# export NVIM_APPNAME="lazynvim"

# TODO, try this stuff out
# https://github.com/ThePrimeagen/.dotfiles/blob/master/uwuntu/.config/personal/env
# https://github.com/ThePrimeagen/.dotfiles/blob/master/zsh/.zsh_profile

# plugins
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh


source ~/dotfiles/.config/zsh/plugins/fzf-git.sh
# disable flow control so ^G^S works for FZF git stashes
stty -ixon

# function noop() {}
# zle -N noop
# bindkey '^G' noop
#
# function lazygit-widget() { lazygit }
# zle -N lazygit-widget
# bindkey '^G^G' lazygit-widget
# bindkey '^Gg' lazygit-widget
#
# # FZF into nvim, do I want to change this bind?
# bindkey -s '^o' 'nvim $(fzf)^M'

# shell tools
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# -- Use fd instead of fzf --
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}
#
# --- setup fzf theme ---
# fg="#CBE0F0"
# bg="#011628"
# bg_highlight="#143652"
# purple="#B388FF"
# blue="#06BCE4"
# cyan="#2CF9ED"
#
# export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"
# Catpuccin macciatto theme for fzf
red="#ed8796"
blue="#8aadf4"

export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:${red} \
--color=fg:#cad3f5,header:${red},info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:${red} \
--color=border:${blue}"

# Use Bat for FZF preview
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# bun completions
[ -s "/Users/acaron/.bun/_bun" ] && source "/Users/acaron/.bun/_bun"

# fnm
eval "$(fnm env --use-on-cd)"
