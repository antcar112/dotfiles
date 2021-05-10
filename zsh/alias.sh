# Alias

# General Aliases
alias ..='cd ..'
alias c='clear'
# alias ls='ls --group-directories-first'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
# alias lt='ls --human-readable --size -1 -S --classify'
alias grep='grep --color'
alias path='echo -e ${PATH//:/\\n}'

alias ref='source ~/.zshrc'

alias dev='cd ~/dev'

# Config files
alias cf='cd ~/dotfiles'
alias cfg='code ~/.gitconfig'
alias cfv='code ~/.vimrc'
alias cfz='code ~/.zshrc'
alias cfa='code ~/dotfiles/zsh/alias.sh'

# NPM and Yarn
alias n='npm'
alias ns='npm start'
alias nr='npm run'
alias ni='npm install'

alias y='yarn'
alias ys='yarn start'
alias yr='yarn run'

alias v=vim

# Git
alias g='git'

alias br='branch'
alias co='checkout'
alias ci='commit'
alias f='fetch'
alias st='status'
alias pl='pull --rebase origin'

alias ga='git add .'
alias gb='git --no-pager branch --sort=-committerdate' # Sorted by latest, don't open vim
alias gc='git commit -m'
alias gca='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit  --graph"
alias gpl='git pull --rebase origin'
alias gps='git push'
alias gs='git status -s'

alias gcb='git pull --rebase origin; git checkout -b'

function gpso {
  branch=$(git branch | grep '*' | sed 's/* //');
  git push -u origin $branch;
}

function mkcd {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}
