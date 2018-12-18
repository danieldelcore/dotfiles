# dotfiles ಠ_ಠ

## Installation 📦
Clone this repo to a hidden `/.dotfile` directory in your home directory:

`cd ~ && git clone git@github.com:danieldelcore/dotfiles.git ~/.dotfile`

Install brew:

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Run setup scripts:

- Run all installation scripts: `source ~/.dotfiles/install-scripts/install-all.sh`

_-or-_

- directories:  `source ~/.dotfiles/install-scripts/directories.sh`
- brew:  `source ~/.dotfiles/install-scripts/brew.sh`
- node:  `source ~/.dotfiles/install-scripts/node.sh`
- zsh:  `source ~/.dotfiles/install-scripts/oh-my-zsh.sh`
- osx:  `source ~/.dotfiles/install-scripts/osx.sh`
- symlinks:  `source ~/.dotfiles/install-scripts/symlinks.sh`

## ZSH Themes 🍱
This repo installs three themes by default. Theme configuration is available in `.zshrc`.

To use the base theme 'ddc-prompt': `ZSH_THEME="ddc-prompt"`

To use the [Spaceship](https://github.com/denysdovhan/spaceship-prompt): `ZSH_THEME="spaceship"`

To use [Pure prompt](https://github.com/sindresorhus/pure):

```bash
autoload -U promptinit; promptinit
prompt pure

ZSH_THEME="" #to disable oh-my-zsh themes.
```
