# zsh appearance
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWUNTRACKEDFILES="true"
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=":"

PROMPT_FIRST_LINE='\
%F{green}%n@%m:%~%f\
'

PROMPT_SECOND_LINE='\
%K{green}%F{black} $(date +%H:%M:%S) $(__git_ps1 "%s ")%f%k\
 $ \
'

PROMPT="\
$PROMPT_FIRST_LINE
$PROMPT_SECOND_LINE"
