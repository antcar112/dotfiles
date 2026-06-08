# Dotfiles

Repo to manage and sync custom dotfiles across multiple machines. This repo uses the [GNU Stow](https://www.gnu.org/software/stow/) tool. A good intro to using Stow to manage symlinks can be [found here](https://www.youtube.com/watch?v=y6XCebnB9gs&list=PLB78HyNbpjPXuqm0440-UyknjiRqPhU55).

Configs live under `.config/` and are symlinked into `~/.config/` when stowed. Top-level dotfiles like `.zshenv`, `.gitconfig`, and `.vimrc` are stowed directly into `$HOME`.

## Install

1. Install [Homebrew](https://brew.sh/). After installing, run the commands the installer tells you to add Homebrew to your **PATH**

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Install Git & Stow

   ```sh
   brew install git stow
   ```

3. Clone this repo into `~` directory

4. Run Stow in `dotfiles` directory

   ```sh
   cd ~/dotfiles
   stow .
   ```

5. Run [Brewfile](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f#basic-brew-bundle)

   ```sh
   brew bundle install
   ```

6. Create private dotfiles (if needed). These paths are gitignored.

   ```sh
   touch ~/dotfiles/.config/zsh/private.sh
   touch ~/dotfiles/.config/personal/private
   touch ~/dotfiles/private.gitconfig
   ```
