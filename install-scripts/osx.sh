#!/usr/bin/env sh

# https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/

echo "Configuring your Mac 💻"

echo "Keyboard preferences ⌨️"
# System Preferences > Keyboard >
defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard >
defaults write NSGlobalDomain InitialKeyRepeat -int 15

echo "Dock 🛳"

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 54

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

echo "Mission Control"

# System Preferences > Mission Controll > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

echo "Misc 📦"

# Completely Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

echo "Mac configuration finished 💻"
echo "Note that some of these changes require a logout/restart to take effect."
