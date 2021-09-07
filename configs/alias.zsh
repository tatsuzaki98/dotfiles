if type exa > /dev/null; then
  alias ls='exa'
else
  echo "'exa' is not installed."
  if [ "$(uname)" "==" "Darwin" ]; then
    alias ls='ls -G'
  else
    alias ls='ls --color=auto'
  fi
fi
alias ll='ls -al'
alias la='ls -a'


if type ggrep > /dev/null; then
  alias grep='ggrep --color -P'
else
  alias grep='grep --color=always'
fi


if type ccat > /dev/null; then
  alias cat='ccat'
else
  if type bat > /dev/null; then
    alias cat='bat --theme=GitHub --style="plain"'
  else
    echo "'ccat' or 'bat' is not installed."
  fi
fi

