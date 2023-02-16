# zsh appearance

autoload -U colors && colors

setopt PROMPT_SUBST
PROMPT="${fg[green]}$(__git_ps1 "[%s] ")${fg[blue]}%n@%m:%~${reset_color}
\$ "

