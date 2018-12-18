#!/usr/bin/env sh

echo "oh-my-zsh 😲"

echo "installing oh-my-zsh..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "installing base theme (DDC)..."

ln -s "~/.dotfiles/oh-my-zsh/ddc-theme.zsh-theme" "$ZSH_CUSTOM/themes/ddc-prompt/ddc-theme.zsh-theme"

# Set ZSH_THEME="ddc-prompt" in your .zshrc.

echo "installing Spaceship theme..."

# spaceship-prompt: https://github.com/denysdovhan/spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Set ZSH_THEME="spaceship" in your .zshrc.

echo "oh-my-zsh finished 😲"
