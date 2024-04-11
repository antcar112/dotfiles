# Dotfiles

Repo to manage and sync custom dotfiles across multiple machines. This repo uses the [GNU Stow](https://www.gnu.org/software/stow/) tool. A good intro to using Stow to manage symlinks can be [found here](https://www.youtube.com/watch?v=y6XCebnB9gs&list=PLB78HyNbpjPXuqm0440-UyknjiRqPhU55).

## Install

1. Install [Homebrew](https://brew.sh/)

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Install Git & Stow

   ```sh
   brew install git
   brew install stow
   ```

3. Clone this repo into `~` directory

4. Run Stow in `dotfiles` directory

   ```sh
   cd ~/dotfiles
   stow . --no-folding
   ```

5. Run [Brewfile](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f#basic-brew-bundle)

   ```sh
   brew bundle install
   ```

6. Create Private dotfiles (if needed).

   ```sh
   touch ~/dotfiles/zsh/private.sh
   touch ~/dotfiles/private.gitconfig
   ```
