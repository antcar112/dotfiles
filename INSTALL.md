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
# Clone this repo and link

# OMZ
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

brew install --cask visual-studio-code
brew install --cask sublime-text

brew install --cask alfred
brew install alt-tab
brew install --cask firefox
brew install --cask spotify
brew install --cask spotmenu
brew install --cask beardedspice
```
