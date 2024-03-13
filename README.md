# Dotfiles

1. Clone repo into home directory
2. Install [GNU Stow](https://www.gnu.org/software/stow/).
   `brew install stow`
3. Run stow
   `stow .`

To set symbolic links

```sh
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```
