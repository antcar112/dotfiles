#!/bin/sh

gpso() {
  branch=$(git branch | grep '*' | sed 's/* //');
  git push -u origin $branch;
}

mkcd() {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

zsh_history_fix() {
  mv ~/.zsh_history ~/.zsh_history_bad
  strings -eS ~/.zsh_history_bad > ~/.zsh_history
  fc -R ~/.zsh_history
  rm ~/.zsh_history_bad
}
