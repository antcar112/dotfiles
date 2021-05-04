# Alias

# General Aliases
alias ..='cd ..'
alias c='clear'
alias ll='ls -Alp'
# alias lt='ls --human-readable --size -1 -S --classify'

# NPM and Yarn
alias n='npm'
alias ns='npm start'
alias nr='npm run'
alias ni='npm install'

alias y='yarn'
alias ys='yarn start'
alias yr='yarn run'

# Git
alias g='git'

alias br='branch'
alias co='checkout'
alias ci='commit'
alias f='fetch'
alias st='status'
alias pl='pull --rebase origin'

alias ga='git add .'
alias gb='git branch --sort=-committerdate'
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