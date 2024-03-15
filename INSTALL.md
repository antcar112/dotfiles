# Install on new mac

TODO Update this

```sh
xcode-select --install
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder;

# iterm - TODO add iterm settings
brew cask install iterm2
touch ~/.hushlogin

brew install git
brew install stow

brew install bat
brew install eza
brew install fnm
brew install fzf
brew install tmux
brew install zoxide

brew install starship
brew install zsh-autocomplete
brew install zsh-fast-syntax-highlighting

brew install --cask alt-tab
brew install --cask firefox
brew install --cask hiddenbar
brew install --cask iterm2
brew install --cask itsycal
brew install --cask rectangle
brew install --cask reflex
brew install --cask spotify
brew install --cask stats
brew install --cask sublime-text
brew install --cask visual-studio-code

```
