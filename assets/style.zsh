# zsh appearance

autoload -U colors && colors

setopt PROMPT_SUBST

GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWUNTRACKEDFILES="true"
GIT_PS1_SHOWUPSTREAM="auto"
 GIT_PS1_STATESEPARATOR=" "

PROMPT='${fg[blue]}%n@%m:%~
${fg[green]}$(__git_ps1 "%s")${reset_color}\$ '

