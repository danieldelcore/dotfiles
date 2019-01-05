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

# Spaceship
# ZSH_THEME="spaceship"

# Pure propt + theme
ZSH_THEME="" # left empty to tell oh-my-zsh not to load a theme
autoload -U promptinit; promptinit
prompt pure

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

local __command_palette() { # {{{
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

alias todo="open /Users/${USERNAME}/Dropbox/1_docs/0_TODO.md"
alias typora="open -a Typora"
alias go-hyper="cd ~/.hyper_plugins/local/"
alias github="git ls-remote --get-url | sed 's/:/\//' | sed 's/git@/https:\/\//' | xargs open"

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

export NVM_DIR="/Users/${USERNAME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Calls nvm use automatically in a directory with a .nvmrc file
# autoload -U add-zsh-hook
# load-nvmrc() {
#   local node_version="$(nvm version)"
#   local nvmrc_path="$(nvm_find_nvmrc)"
#
#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
#
#     if [ "$nvmrc_node_version" = "N/A" ]; then
#       nvm install
#     elif [ "$nvmrc_node_version" != "$node_version" ]; then
#       nvm use
#     fi
#   elif [ "$node_version" != "$(nvm version default)" ]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc
