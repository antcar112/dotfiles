if [ -e $HOME/.dotfiles/bash/bash_aliases.sh ]; then
  source ~/.dotfiles/bash/bash_aliases.sh
fi
if [ -e $HOME/.dotfiles/bash/bash_prompt.sh ]; then
  source ~/.dotfiles/bash/bash_prompt.sh
fi

# PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(_git_ps1) '


# source ~/.dotfiles/bash/git-prompt.sh # Show git branch name at command prompt
# export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color


function github-init() {
  local repoUrl="$1"
  git remote add origin "${repoUrl}"
  git branch -M master
  git push -u origin master
}

function mkcd() {
  local dirName="$1"
  mkdir "${dirName}"
  cd "${dirName}"
}

