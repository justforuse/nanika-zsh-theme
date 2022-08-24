function node_prompt_version {
    if which node &> /dev/null; then
        version="$(node -v)"
        v="${version:1:10}"
        echo "%{$fg[green]%}⬢ $v %{$reset_color%}"
    fi
}

PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} %{$fg_bold[magenta]%}$(git_current_user_name)%{$reset_color%} $(git_prompt_info) ⌚ %{$fg_bold[magenta]%}%*%{$reset_color%}
%(?:%{$fg_bold[green]%}$ :%{$fg_bold[red]%}$ )'

RPROMPT='%{$(echotc UP 1)%}$(node_prompt_version)%{$(echotc DO 1)%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%} %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
