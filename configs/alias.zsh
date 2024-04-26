# grep
if type ggrep > /dev/null; then
  alias grep='ggrep --color'
else
  alias grep='grep --color=always'
fi

# docker compose
alias docker-compose='docker compose'
alias dc='docker compose'
alias dc-build='docker compose build'
alias dc-run='docker compose run'
alias dc-up='docker compose up'
alias dc-down='docker compose down'
alias dc-logs='docker compose logs'
alias dc-ps='docker compose ps'
alias dc-exec='docker compose exec'

# ls -> exa 
printf "\e[36mexa\e[m:"
if type exa > /dev/null; then
  printf " \e[32mok\e[m.\n"
  alias ls='exa --sort=extension --group-directories-first --group'
else
  printf "not available.\n"
  if [ "$(uname)" "==" "Darwin" ]; then
    alias ls='ls -G'
  else
    alias ls='ls --color=auto'
  fi
fi
alias ll='ls -al'
alias la='ls -a'

# cat -> bat
printf "\e[36mbat\e[m:"
if type bat > /dev/null; then
  printf " \e[32mok\e[m.\n"
  alias cat='bat --style="plain" --theme="ansi"'
else
  printf "not available.\n"
fi
