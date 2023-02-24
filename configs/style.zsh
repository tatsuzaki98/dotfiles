# zsh appearance
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWUNTRACKEDFILES="true"
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=":"

PROMPT_FIRST_LINE='\
%F{green}[$(date +%H:%M:%S)] %n@%m:%~%f \
%K{green}%F{black}$(__git_ps1 " %s ")%f%k\
'

PROMPT_SECOND_LINE='$ '
