# ls
printf "checking for \e[36mexa\e[m..."
if type exa > /dev/null; then
  printf " \e[32mok\e[m.\n"
  alias ls='exa --sort=extension --group-directories-first'
else
  printf "not detected.\n"
  if [ "$(uname)" "==" "Darwin" ]; then
    alias ls='ls -G'
  else
    alias ls='ls --color=auto'
  fi
fi
alias ll='ls -al'
alias la='ls -a'


# grep
if type ggrep > /dev/null; then
  alias grep='ggrep --color -P'
else
  alias grep='grep --color=always'
fi


# cat
printf "checking for \e[36mbat\e[m..."
if type bat > /dev/null; then
  printf " \e[32mok\e[m.\n"
  alias cat='bat --style="plain" --theme="ansi"'
else
  printf "not detected.\n"
fi
