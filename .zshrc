# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
USERNAME=$(id -un);

export ZSH="/Users/$USERNAME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Base
# ZSH_THEME="ddc-prompt"

# ZSH theme
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Command Palette
export FZF_DEFAULT_OPTS="--extended --reverse --multi --cycle\
  --preview-window=down:30% \
  --ansi +s\
  --bind=ctrl-n:toggle-down\
  --color=fg:8,fg+:-1,bg:-1,bg+:-1,hl:7,hl+:3,prompt:2,marker:2,pointer:2,info:9"

__command_palette () {
  local cmd=`cat ${COMMANDS_FILE:-~/.dotfiles/command-palette/commands.txt} | awk -F " ## " '! /(^\s*$|^#)/{print "\x1b[32;1m" $1 "\x1b[37m ## " $2 "\x1b[m"}' | fzf -e -s | awk -F " ## " '{print $2}'`
  if [[ -n "$cmd" ]]; then
    local output=`eval "$cmd"`
    LBUFFER="$LBUFFER$output"
  fi
}

zle -N '__command_palette'
bindkey '^ ' __command_palette

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
alias editor="code"
alias ohmyzsh="editor ~/.oh-my-zsh"
alias zshrc="editor ~/.zshrc"
alias zshalias="cat ~/.zshrc | grep '^alias'"
alias gitalias="cat ~/.oh-my-zsh/plugins/git/git.plugin.zsh | grep '^alias'"

# Alias dirs
alias dev="cd ~/Development"
alias lab="cd ~/Lab"

alias github="git ls-remote --get-url | sed 's/:/\//' | sed 's/git@/https:\/\//' | xargs open"

# Git
alias gfrom="git fetch origin master && git rebase origin/master"

# Work
alias af="cd ~/Development/atlassian/atlassian-frontend-monorepo"
alias afp="cd ~/Development/atlassian/atlassian-frontend-monorepo/platform && nvm use"
alias afj="cd ~/Development/atlassian/atlassian-frontend-monorepo/jira && nvm use"
alias afc="cd ~/Development/atlassian/atlassian-frontend-monorepo/confluence && nvm use"
alias jfe="cd ~/Development/atlassian/atlassian-frontend-monorepo/jira && nvm use"



# Sets vim version
export EDITOR=`which vim`

# Opens github repo
function github() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    following=`git status -sb | head -1 | sed 's/.*\.\.\.//'`

    if [[ $following == *"/"* ]]; then
      branch=${following#*/}
      repo=${following%/*}
    else
      branch='master'
      repo=''
    fi

    repoURL=`git ls-remote --get-url ${repo}`;
    repoURL=${repoURL/:/\/}
    repoURL=${repoURL#git@*}
    repoURL=${repoURL%\.git*}
    repoURL="https://${repoURL}/tree/${branch}"
    open "${repoURL}"
  else
    echo "Not a git repo"
  fi
}

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/ddelcore/.bun/_bun" ] && source "/Users/ddelcore/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source ~/.afm-git-configrc

export PATH="/Users/ddelcore/.local/bin:$PATH"

export PATH="/Users/ddelcore/.orbit/bin:$PATH"

export PATH="/Users/ddelcore/Development/atlassian/atlassian-frontend-monorepo/afm-tools/path:$PATH"
