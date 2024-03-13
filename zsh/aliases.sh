# Alias

# General Aliases
alias ..='cd ..'
alias c='clear'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias grep='grep --color'
alias path='echo -e ${PATH//:/\\n}'
alias pip='pip3'

alias reset='source ~/.zshrc'

alias dev='cd ~/dev'

# Config files
# alias cf='cd ~/dotfiles'
# alias df='cd ~/dotfiles'
alias dotfiles='cd ~/dotfiles'
# alias cfg='code ~/.gitconfig'
# alias cfv='code ~/.vimrc'
# alias cfz='code ~/.zshrc'
# alias cfa='code ~/dotfiles/zsh/aliases.sh'
# alias cff='code ~/dotfiles/zsh/functions.sh'
# alias cfomz='code $ZSH/oh-my-zsh.sh'
# alias cfenv='code ~/.config/.env.sh'

# NPM and Yarn
alias n='npm'
alias ns='npm start'
alias nr='npm run'
alias nt='npm test'
alias ni='npm install'
alias nid='npm install -D'
alias nm='npm run start:mock'

alias y='yarn'
alias ys='yarn start'
alias ym='yarn start:mock'
alias yt='yarn test'
alias ya='yarn add'
alias yad='yarn add -D'
alias yu='yarn upgrade-interactive'

alias v=vim
alias nvm=fnm

# Git
alias g='git'
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
