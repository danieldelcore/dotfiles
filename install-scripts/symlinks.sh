#!/usr/bin/env sh

echo "Symlinks 🔀"

ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/git/* ~/.config/git
ln -sf ~/.dotfiles/.hyper.js ~/.hyper.js

echo "Atom ⚛️"

ln -sf ~/.dotfiles/atom/config.cson ~/.atom/config.cson
ln -sf ~/.dotfiles/atom/keymap.cson ~/.atom/keymap.cson
ln -sf ~/.dotfiles/atom/snippets.cson ~/.atom/snippets.cson
ln -sf ~/.dotfiles/atom/styles.less ~/.atom/styles.less

echo "VS Code 📝"

ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sf ~/.dotfiles/vscode/snippets/* ~/Library/Application\ Support/Code/User/snippets

echo "Symlinks finished 🔀"
