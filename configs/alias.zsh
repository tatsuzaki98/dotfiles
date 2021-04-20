##### ls
if type exa > /dev/null; then
  alias ls='exa'
else
  if [ "$(uname)" == 'Darwin' ]; then
    alias ls='ls -G'
  else
    alias ls='ls --color=auto'
  fi
fi
alias ll='ls -al'
alias la='ls -a'


##### grap
alias grep='grep --color=always'


##### cat
if type ccat > /dev/null; then
  alias cat='ccat'
fi
if type bat > /dev/null; then
  alias cat='bat --theme=GitHub --style="plain"'
fi
