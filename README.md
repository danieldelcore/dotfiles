# dotfiles ಠ_ಠ 

## Setup
The following four lines will set up the bare repository.

```bash
git init --bare $HOME/.dotfiles.git
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
dotfiles config --local status.showUntrackedFiles no
```

1. Create a git bare repository at ~/.dotfiles.git to track files.
2. Add alias setting to shell configuration file. This is for zsh so it’s `.zshrc`. For bash, it’d be `.bashrc`. Note how the paths for git directory and working tree are set.
3. Reload the shell setting.
4. Prevent untracked files from showing up when we call dotfiles status.

Use the aliased command from the home directory to manage files, and use git remote repo if you want to manage the files online.

```bash
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles remote add origin https://www.github.com/username/repo.git
dotfiles push origin master
```

## Commands

## Folders

## Aliases

## Vim

### Resources
- [Vim Awesome](https://vimawesome.com/)

## Git

## ZSH

