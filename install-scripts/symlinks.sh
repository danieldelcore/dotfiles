#!/usr/bin/env sh

echo "Symlinks 🔀"

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/git/* ~/.config/git
ln -s ~/.dotfiles/.hyper.js ~/.hyper.js

echo "Atom ⚛️"

ln -s ~/.dotfiles/atom/config.cson ~/.atom/config.cson
ln -s ~/.dotfiles/atom/keymap.cson ~/.atom/keymap.cson
ln -s ~/.dotfiles/atom/snippets.cson ~/.atom/snippets.cson
ln -s ~/.dotfiles/atom/styles.less ~/.atom/styles.less

echo "VS Code 📝"

ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/.dotfiles/vscode/snippets/* ~/Library/Application\ Support/Code/User/snippets

echo "Symlinks finished 🔀"
