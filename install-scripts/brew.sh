#!/usr/bin/env sh

echo "Brew 🍺"

# Upgrade brew
brew upgrade

# Dependencies
brew install trash
brew install fzf
brew install imagemagick
brew install mcrypt
brew install mongodb
brew install mysql
brew install nvm
brew install rename
brew install tig
brew install tree
brew install vim
brew install yarn
brew install pure

echo "Brew Cask"

# Browsers
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-chrome-canary

# Terminals
brew install --cask iterm2

# Editors
brew install --cask visual-studio-code

# Applications
brew install --cask 1password
brew install --cask dropbox
brew install --cask imagealpha
brew install --cask imageoptim
brew install --cask insomnia
brew install --cask kap
brew install --cask figma
brew install --cask slack
brew install --cask vlc
brew install --cask notion
brew install --cask spotify


# Cleanup
brew cleanup

echo "Brew finished 🍻"
