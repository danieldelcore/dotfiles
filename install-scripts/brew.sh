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
brew install openssh
brew install openssl
brew install rename
brew install tig
brew install tree
brew install vim
brew install yarn

echo "Brew Cask"

# Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary

# Terminals
brew cask install hyper
brew cask install iterm2

# Editors
brew cask install atom
brew cask install visual-studio-code

# Applications
brew cask install 1password
brew cask install dropbox
brew cask install imagealpha
brew cask install imageoptim
brew cask install insomnia
brew cask install kap
brew cask install sketch
brew cask install slack
brew cask install typora
brew cask install vlc

# Cleanup
brew cleanup

echo "Brew finished 🍻"
