# oh-my-zsh Theme
# Installation: place this file in .oh-my-zsh/custom//themes/ddc-prompt/ddc-theme.zsh-theme

function node_prompt_version {
    if which node &> /dev/null; then
        echo "%{$fg_bold[blue]%}n:(%{$fg_bold[red]%}$(node -v)%{$fg[blue]%}) %{$reset_color%}"
    fi
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='%{$fg_bold[blue]%}🐙  %{$fg[cyan]%}%c%{$reset_color%} $(node_prompt_version)$(git_prompt_info)
'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}g:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
