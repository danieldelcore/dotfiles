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

echo "Brew Cask"

# Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary

# Terminals
brew cask install iterm2

# Editors
brew cask install visual-studio-code

# Applications
brew cask install 1password
brew cask install dropbox
brew cask install imagealpha
brew cask install imageoptim
brew cask install insomnia
brew cask install kap
brew cask install figma
brew cask install slack
brew cask install vlc
brew cask install notion
brew cask install spotify


# Cleanup
brew cleanup

echo "Brew finished 🍻"
