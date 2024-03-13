# Dotfiles

Repo to manage and sync custom dotfiles across multiple machines. This repo uses the [GNU Stow](https://www.gnu.org/software/stow/) tool. A good intro to using Stow to manage symlinks can be [found here](https://www.youtube.com/watch?v=y6XCebnB9gs&list=PLB78HyNbpjPXuqm0440-UyknjiRqPhU55).

## Required tools

Prior to setup, you'll need the following tools installed

### Git

```sh
brew install stow
```

### Stow

```sh
brew install stow
```

1. Clone repo into home directory

2. Run stow in the dotfiles repo.

   ```sh
   cd ~/dotfiles
   stow .
   ```

3. Create any private files (if needed)

```sh
 touch ~/dotfiles/zsh/private.sh
 touch ~/dotfiles/private.gitconfig
```
